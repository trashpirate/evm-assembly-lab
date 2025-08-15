// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.26;

import {Test, console} from "forge-std/Test.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

import {Base_TestV1, HorseStore} from "test/v1/Base_TestV1.t.sol";

contract HorseStoreHuff_Test is Base_TestV1 {
    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy("horseStoreV1/HorseStore"));
    }
}
