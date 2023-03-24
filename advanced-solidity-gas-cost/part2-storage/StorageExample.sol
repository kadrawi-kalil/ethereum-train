// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract StorageExample {
    uint256 private myInteger=0;

    function setToOne() external {
        myInteger=1;
    }

    function setToTwo() external {
        myInteger=2;
    }

    function setToZero() external {
        myInteger =0;
    }

    function getInteger() external view returns(uint256){
        return myInteger;
    }

    function getAndSetInteger() external {
        uint256 _myInteger = myInteger;
        myInteger= _myInteger +1;
    }

