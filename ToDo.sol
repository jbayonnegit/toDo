// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract toDo{

    struct Task {

        string  description;
        bool    completed;

    }

    mapping( address user => Task[] taskArray)  _addressToTask;
    mapping( address user => uint256 taskArray) _nbTask;

    function addTask( string memory description ) public{

        Task memory task = Task( description, false ); 
        _addressToTask[ msg.sender].push( task );
        _nbTask[ msg.sender ] += 1;
    }
}