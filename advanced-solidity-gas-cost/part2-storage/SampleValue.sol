//SPDX-License-Identifier:MIT

pragma solidity ^0.8.10;

contract SampleValue {
    uint256 private myInteger = 1;

    function mayBeSet(uint i) external payable {
        myInteger = i;
    }

    // 23,778

    //  2,200(MSTORE when value doesn't change
    //- 2,100
    //________
    //=   100 (cost of no change/G_warmaccess if v=v')

    function mayBeSetUpdated(uint i) external payable {
        uint256 _myInteger = myInteger;
        //cold access 2,100
        // require(_myInteger !=100);
        if (_myInteger != i) {
            myInteger = i;
        }
        // 23,748 (we save 30 gas )
        //           because cost of testing is less than 100
    }
}
