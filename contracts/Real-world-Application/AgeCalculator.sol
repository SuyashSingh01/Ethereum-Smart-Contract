// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AgeCalculator {
    function calculateAge(uint256 _birthYear, uint256 _birthMonth, uint256 _birthDay) public view returns (uint256) {
        uint256 currentYear = getCurrentYear();
        uint256 currentMonth = getCurrentMonth();
        uint256 currentDay = getCurrentDay();

        require(_birthYear <= currentYear, "Invalid birth year");
        require(_birthMonth > 0 && _birthMonth <= 12, "Invalid birth month");
        require(_birthDay > 0 && _birthDay <= 31, "Invalid birth day");

        uint256 age = currentYear - _birthYear;

        if (_birthMonth > currentMonth || (_birthMonth == currentMonth && _birthDay > currentDay)) {
            age--;
        }

        return age;
    }

    function getCurrentYear() internal view returns (uint256) {
        return (block.timestamp / 31556952) + 1970;
    }

    function getCurrentMonth() internal view returns (uint256) {
        uint256 secondsInYear = block.timestamp % 31556952;
        return (secondsInYear / 2629746) + 1;
    }

    function getCurrentDay() internal view returns (uint256) {
        uint256 secondsInYear = block.timestamp % 31556952;
        uint256 secondsInMonth = secondsInYear % 2629746;
        return (secondsInMonth / 86400) + 1;
    }
}
