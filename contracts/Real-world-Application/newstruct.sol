// SPDX-License-Identifier: MIT
 
pragma solidity ^0.8.0;
 
contract structureDemo {
    struct Employee {
        string name; //1
        uint256 age; //2
        address addr; //3
    }
 
    Employee public emp;
 
    Employee[] public empData; // array ka naam =  empData Employee[0,1,2,3];
 
    address public owner;
 
    constructor() {
        owner = msg.sender;
    }
 
    function setValue() public {
        require(owner == msg.sender, "Bhai Real ID se aa");
 
        Employee memory emp1 = Employee(
            "Ashish",
            22,
            0xdD870fA1b7C4700F2BD7f44238821C26f7392148
        ); //Tareeka no. 1
 
        Employee memory emp2 = Employee({
            age: 22,
            addr: 0x8F1e386E2D3B8975445Eb4476d6F80B24CAe4540,
            name: "Amit"
        }); //Tareeka no. 2
 
        Employee memory emp3;
 
        emp3.name = "Ramesh";
 
        emp3.age = 56;
 
        emp3.addr = 0x583031D1113aD414F02576BD6afaBfb302140225; //tareeka no. 3
 
        Employee memory emp4 = Employee(
            "Shubham",
            32,
            0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c
        );
 
        emp = emp4;
 
        empData.push(emp1);
 
        empData.push(emp2);
 
        empData.push(emp3);
 
        empData.push(emp4);
    }
}
 
//0x583031D1113aD414F02576BD6afaBfb302140225
 
//0xdD870fA1b7C4700F2BD7f44238821C26f7392148
