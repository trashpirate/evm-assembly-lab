// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.26;

import {Test, console} from "forge-std/Test.sol";

import {HorseStore} from "src/horseStoreV1/HorseStore.sol";

abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function test_readValue() public {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0);
    }

    function test_writeValue() public {
        uint256 humberOfHorses = 777;
        horseStore.updateHorseNumber(humberOfHorses);
        assertEq(horseStore.readNumberOfHorses(), humberOfHorses);
    }
}
