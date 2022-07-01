
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/eth.sol";

contract TestStorage {

  function testNewStorage() {
    Storage capacity = new Storage();
    capacity.store(500);
    uint expected = 500;

    Assert.equal(capacity.retrieve(), expected, "500 storage units should be there.");
  }
}