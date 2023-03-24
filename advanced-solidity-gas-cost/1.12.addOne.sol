// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract AddOne {
    uint256 private a = 3;

    function addPlusOne() external view returns (uint256) {
        unchecked {
            return a + 1;
        }
    }
}
