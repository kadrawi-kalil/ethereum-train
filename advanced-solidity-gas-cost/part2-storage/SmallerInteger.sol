//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SmallerInteger {
    address public oneAddress;
    uint256 public oneUint256;
    uint128 public oneUint128;
    uint8 public oneUint8;
    bool public oneBool;
    string public oneString;

    function changeAddress() external {
        oneAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }

    function changeUint256() external {
        oneUint256 = 5;
    }

    function changeUint128() external {
        oneUint128 = 5;
    }

    function changeUint8() external {
        oneUint8 = 5;
    }

    function changeString() external {
        oneString = "azerty";
    }

    function changeBool() external {
        oneBool = true;
    }
}
