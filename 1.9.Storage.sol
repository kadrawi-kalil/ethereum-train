// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {
    uint256 private a = 10;
    uint256 private b = 20;
    uint256 private c = 30;

    function getAtSlot(uint256 slot) external pure returns (uint256) {
        uint256 value;

        assembly {
            //   value:=sload(slot)
            value := b.slot
        }

        return value;
    }
}
