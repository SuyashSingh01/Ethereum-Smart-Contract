// Problem Statement 3: Classroom Grades Registry
// Objective: Build a contract GradesRegistry to record and retrieve students' grades.
// Use a struct named Grade that includes properties for the student's ID and their grade.
// Implement a mapping from student ID to their Grade.
// Write a function for adding or updating a student's grade.
// Develop a function to retrieve a student's grade by their ID.

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Student{
    struct Grade{
    uint256 id;
    string grade;
    }
    mapping (uint256=>Grade) public std;
    function setValue(uint256 _id,string memory _g)public {
       Grade  memory obj=Grade(_id,_g);
        std[_id]=obj;
    }
    function Update(uint256 _id,string memory _grade)public{
        std[_id]=Grade(_id,_grade);
    }
    function get(uint256 _id)public view returns(string memory){
        return std[_id].grade;
    }
}