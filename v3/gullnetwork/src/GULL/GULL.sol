// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

/**
      _______  __    __   __       __      
     /  _____||  |  |  | |  |     |  |     
    |  |  __  |  |  |  | |  |     |  |     
    |  | |_ | |  |  |  | |  |     |  |     
    |  |__| | |  `--'  | |  `----.|  `----.
     \______|  \______/  |_______||_______|
*/
contract GULL is ERC20Permit {

    uint256 private constant TOTAL_SUPPLY = 500_000_000 * 1e18;

    error UnmatchedArraysLength();
    error UnmatchedTotalDistribution();

    constructor(
        address[] memory addresses,
        uint256[] memory distribution
    )
        ERC20("GULL", "GULL")
        ERC20Permit("GULL")
    {
        uint256 totalAddresses = addresses.length;
        if(totalAddresses != distribution.length){
            revert UnmatchedArraysLength();
        }

        uint256 total;
        for (uint256 index; index < totalAddresses; ++index) {
            _mint(addresses[index], distribution[index]);
            total += distribution[index];
        }

        if(total != TOTAL_SUPPLY){
            revert UnmatchedTotalDistribution();
        }
    }

}
