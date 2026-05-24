// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

// Based on @balancer-labs/v2-pool-utils/.../BasePoolSplitCodeFactory.sol

pragma solidity ^0.7.6;
pragma experimental ABIEncoderV2;

import "@balancer-labs/v2-pool-utils/contracts/interfaces/IRateProvider.sol";
import "@balancer-labs/v2-solidity-utils/contracts/helpers/BaseSplitCodeFactory.sol";

import "./ConstantRateProvider.sol";

contract ConstantRateProviderFactory is BaseSplitCodeFactory {
    mapping(address => bool) private _isRateProviderFromFactory;

    event RateProviderCreated(address indexed rateProvider);

    constructor() BaseSplitCodeFactory(type(ConstantRateProvider).creationCode) {}

    /// @notice Creates a ConstantRateProvider that always returns the provided `value`.
    function create(uint256 value) external returns (address) {
        return _create(abi.encode(value));
    }

    /**
     * @dev Returns true if `rateProvider` was created by this factory.
     */
    function isRateProviderFromFactory(address rateProvider) external view returns (bool) {
        return _isRateProviderFromFactory[rateProvider];
    }

    function _create(bytes memory constructorArgs) internal override returns (address) {
        address rateProvider = super._create(constructorArgs);

        _isRateProviderFromFactory[rateProvider] = true;
        emit RateProviderCreated(rateProvider);

        return rateProvider;
    }
}
