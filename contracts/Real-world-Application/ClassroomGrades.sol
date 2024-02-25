// Problem Statement 3: Classroom Grades Registry

// Objective: Build a contract GradesRegistry to record and retrieve students' grades.

// Use a struct named Grade that includes properties for the student's ID and their grade.
// Implement a mapping from student ID to their Grade.
// Write a function for adding or updating a student's grade.
// Develop a function to retrieve a student's grade by their ID.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradesRegistry {
    struct Grade {
        uint256 studentID;
        uint256 grade;
    }

    mapping(uint256 => Grade) public studentGrades;

    function addOrUpdateGrade(uint256 _studentID, uint256 _grade) public {
        studentGrades[_studentID] = Grade(_studentID, _grade);
    }

    function getGrade(uint256 _studentID) public view returns (uint256) {
        return studentGrades[_studentID].grade;
    }
}

// Explanation:

// We define a contract named GradesRegistry.
// Inside the contract, we declare a struct named Grade with two fields: studentID and grade. 
// This struct represents a student's ID and their grade.
// We declare a mapping named studentGrades that associates each student's ID with their corresponding Grade struct.
// The addOrUpdateGrade function allows adding or updating a student's grade.
//  It takes two parameters: _studentID (the ID of the student) and _grade (the grade to be assigned to the student).
//   It updates the studentGrades mapping with the provided information, associating it with the student's ID.
// The getGrade function retrieves the grade of a student by their ID. 
// It takes _studentID as input and returns the grade associated with that student's ID from the studentGrades mapping. 
// This function is marked as view because it only reads data from the contract and doesn't modify its state.