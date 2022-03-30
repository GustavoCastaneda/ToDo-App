// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0; 


 contract TodoList{
     uint public TaskCount = 0;

     struct Task{
         uint id;
         string content; 
         bool completed; 
     }

    mapping(uint => Task) public tasks;
        
    //Esta funcion es para desplegar una tarea por default
    constructor() public { 
        createTask("Lavate tus dientes");
    }

    function createTask(string memory _content) public{
        TaskCount ++;
        tasks[TaskCount] = Task(TaskCount, _content, false);
    
    }     
 }