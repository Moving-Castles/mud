// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

/**
 * @title IPuppetFactorySystem
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IPuppetFactorySystem {
  function createPuppet(ResourceId systemId) external returns (address puppet);
}
