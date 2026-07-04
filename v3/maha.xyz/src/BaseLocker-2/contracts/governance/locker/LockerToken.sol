// SPDX-License-Identifier: GPL-3.0

// ███╗   ███╗ █████╗ ██╗  ██╗ █████╗
// ████╗ ████║██╔══██╗██║  ██║██╔══██╗
// ██╔████╔██║███████║███████║███████║
// ██║╚██╔╝██║██╔══██║██╔══██║██╔══██║
// ██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██║
// ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝

// Website: https://maha.xyz
// Discord: https://discord.gg/mahadao
// Twitter: https://twitter.com/mahaxyz_

pragma solidity 0.8.21;

import {BaseLocker} from "./BaseLocker.sol";

contract LockerToken is BaseLocker {
  function initialize(address _token, address _staking, address _admin) external reinitializer(3) {
    __BaseLocker_init("Locked MAHA Tokens", "MAHAX", _token, _staking, 4 * 365 * 86_400, _admin);
  }
}
