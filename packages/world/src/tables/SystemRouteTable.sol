// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { console } from "forge-std/console.sol";
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { SystemRouteSchemaLib as SchemaLib } from "../schemas/SystemRouteSchema.sol";

// -- User defined schema and tableId --
uint256 constant tableId = uint256(keccak256("mud.world.table.systemRoute"));

// -- Autogenerated library to interact with tables with this schema --
// TODO: autogenerate

library SystemRouteTable {
  /** Register the table's schema */
  function registerSchema() internal {
    SchemaLib.registerSchema(tableId);
  }

  function registerSchema(IStore store) internal {
    SchemaLib.registerSchema(tableId, store);
  }

  /** Set the table's data */
  function set(address system, uint256 routeId) internal {
    SchemaLib.set(tableId, system, routeId);
  }

  /** Get the table's data */
  function get(address system) internal view returns (uint256) {
    return SchemaLib.get(tableId, system);
  }

  function get(IStore store, address system) internal view returns (uint256) {
    return SchemaLib.get(tableId, store, system);
  }

  function has(address system) internal view returns (bool) {
    return SchemaLib.has(tableId, system);
  }
}
