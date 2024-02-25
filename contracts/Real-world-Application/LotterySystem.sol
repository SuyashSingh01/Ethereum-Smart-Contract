
// Problem :-  Lottery System

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract lottery {
    address public manager;
    address payable[] public participants;
    address public winner1;

    constructor() {
        manager = msg.sender;
    }

    receive() external payable {
        require(msg.value == 1 ether, "Amount should be 1 ehter");
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint256) {
        require(manager == msg.sender, "Not owner");
        return address(this).balance;
    }

    function random() public view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encode(
                        block.difficulty,
                        block.timestamp,
                        participants.length
                    )
                )
            );
    }

    function selectWinner() public {
        require(manager == msg.sender, "Not owner");
        require(participants.length >= 3);
        address payable winner;
        uint256 r = random();
        uint256 index = r % participants.length;
        winner = participants[index];
        winner1 = winner;
        winner.transfer(getBalance());
        participants = new address payable[](0);
    }
}