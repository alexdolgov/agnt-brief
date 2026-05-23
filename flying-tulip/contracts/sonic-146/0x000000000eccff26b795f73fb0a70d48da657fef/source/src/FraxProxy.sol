pragma solidity ^0.8.21;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// =========================== Frax1967Proxy ===========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

import { TransparentUpgradeableProxy } from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract Frax1967Proxy is TransparentUpgradeableProxy {
  constructor(
    address _implementation,
    address _proxyAdminOwner,
    bytes memory data
  ) TransparentUpgradeableProxy(_implementation, _proxyAdminOwner, data) {}
}
