// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Simple {
    uint256 private x = 10;

    function light() external view returns (uint256) {
        return x + 1;
    }

    function heavy() external view returns (uint256) {
        bytes32 _x = keccak256(abi.encodePacked(x));
        for (uint256 i = 0; i < 50; i++) {
            _x = keccak256(abi.encodePacked(x));
        }
        return uint256(_x);
    }
}
