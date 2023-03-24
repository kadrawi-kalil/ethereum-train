// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract StorageExample {
    uint256 private myInteger=0;

    function setToOne() external {
        // 26 266
        //-21 000 trx
        //- 5 000 storage
        //_________
        //=   266
        //(- 2 100) no cold acces fee (because it is not the first time)
        //-   100  gas if it the variable has already been touched
        //________
        //=    166 =>cost calling every function even it is empty
        myInteger=1;
    }

    function setToTwo() external {
        // 43 300
        //-21 000 trx
        //-20 000 storage  (because 0 to non zero)
        //_________
        //= 2 300
        //- 2 100 cold acces fee
        //________
        //=   200 =>cost calling every function even it is empty
        myInteger=2;
    }

    function setToZero() external {
        myInteger =0;
    }

    function getInteger() external view returns(uint256){
        return myInteger;
    }

    function getAndSetInteger() external {
        // 43 545
        uint256 _myInteger = myInteger;
        //- 2 100 (read +cold acces)
        myInteger= _myInteger +1;
        //-20 100 (write+warm acces)
    }

    //Cost(Read + Write)=~Cost(Write)
}

