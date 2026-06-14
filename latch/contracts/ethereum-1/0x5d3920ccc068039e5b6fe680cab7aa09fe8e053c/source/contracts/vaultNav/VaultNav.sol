// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IVaultNav } from "./IVaultNav.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title VaultNav
/// @author Latch team
/// @notice VaultNav contract stores the NAV of the LSDs. Each NAV is only updatable by the assigned updater.
contract VaultNav is IVaultNav, Ownable {
    using SafeCast for uint256;

    /// @notice Internal struct to store the NAV and the timestamp of the NAV update.
    struct Nav {
        /// @notice The NAV price of the LSD token, with 18 decimals.
        uint192 nav;
        /// @notice The timestamp of the NAV update.
        /// Timestamp series form closed-to-open intervals. For example,
        /// x, y, z, where x < y < z, represents the intervals [x, y), [y, z), [z, ∞)
        uint48 updateTime;
    }

    /// @notice Maps a LSD address to its historical NAVs.
    /// The historical NAVs are stored in ascending order of its timestamp.
    mapping(address lsd => Nav[] navAscList) public historicalNavs;
    /// @notice Maps a LSD address to its updater.
    mapping(address lsd => address updater) public navUpdaters;

    /// @dev Modifier to check if the caller is the valid updater of the vault.
    /// @param _lsd The address of the LSD.
    modifier validNavUpdater(address _lsd) {
        if (navUpdaters[_lsd] != msg.sender) {
            revert InvalidNavUpdater(msg.sender);
        }
        _;
    }

    /// @dev Initializes the contract with an owner.
    /// @param _owner The owner of the contract.
    constructor(address _owner) Ownable(_owner) {}

    /// @dev Updates the NAV of a LSD token.
    /// This is the only way to update Nav: appending a new value, this ensures that
    /// 1. Navs are immutable once updated. This gurantees that any deposit and withdraw amounts
    ///    are also immutable once executed.
    /// 2. Navs are stored in timestamp ascending order.
    /// NOTE: It is recommended to update Nav using a future timestamp that is larger than block.timestamp,
    /// which ensures that deposit and withdraw amount calculations are consistent before and after the Nav update.
    /// @param _lsd The address of the LSD token.
    /// @param _nav The new NAV price of the LSD token.
    /// @param _timestamp The timestamp of the NAV update.
    function appendNav(address _lsd, uint256 _nav, uint48 _timestamp) external override validNavUpdater(_lsd) {
        if (_nav == 0 || _nav >= 2 ** 192) {
            revert NavInvalidValue(_nav);
        }
        Nav[] storage navs = historicalNavs[_lsd];
        // This check ensures that Navs are stored in timestamp ascending order.
        if (navs.length > 0 && _timestamp < navs[navs.length - 1].updateTime) {
            revert NavUpdateInvalidTimestamp();
        }
        Nav memory navInfo = _compressNavInfo(_nav, _timestamp);
        navs.push(navInfo);
        emit NavUpdated(_lsd, _nav, _timestamp);
    }

    /// @dev Sets the updater of a LSD token.
    /// @param _lsd The address of the LSD token.
    /// @param _updater The address of the new updater.
    function setNavUpdater(address _lsd, address _updater) external override onlyOwner {
        navUpdaters[_lsd] = _updater;
        emit SetNavUpdater(_lsd, _updater);
    }

    /// @notice Compute the amount of LSDs to the amount of ASSET_TOKENs at a specific timestamp.
    /// @param _lsd The LSD token address.
    /// @param _amount The amount of LSDs, with 18 decimals.
    /// @param _timestamp The timestamp of the NAV value.
    function lsdToTokenE18AtTime(address _lsd, uint256 _amount, uint48 _timestamp) external view returns (uint256) {
        (uint256 nav, ) = getNavByTimestamp(_lsd, _timestamp);
        return (_amount * nav) / (10 ** 18);
    }

    /// @notice Compute the amount of ASSET_TOKENs to the amount of LSDs at the current timestamp.
    /// @param _lsd The LSD token address.
    /// @param _tokenAmountE18 The amount of ASSET_TOKENs, with 18 decimals.
    function tokenE18ToLsdAtTime(
        address _lsd,
        uint256 _tokenAmountE18,
        uint48 _timestamp
    ) external view returns (uint256) {
        (uint256 currentNav, ) = getNavByTimestamp(_lsd, _timestamp);
        // LSDs' decimals are all 18-decimal.
        // Nav is the rate of LSD to ASSET_TOKEN, which also has 18 decimals.
        // NOTE: This limits the actual token amount to be less than (256 - log2(10^36)) = 256 - 120 = 136 bits,
        // which is still huge enough for any practical use.
        return ((_tokenAmountE18) * (10 ** 18)) / currentNav;
    }

    /// @dev getNavByTimestamp returns the NAV of the lsd token at a specific timestamp.
    /// @param _lsd The LSD token address.
    /// @param _timestamp The timestamp of the NAV value.
    /// @return nav The nav value.
    /// @return updateTime The timestamp when the nav is updated.
    function getNavByTimestamp(
        address _lsd,
        uint48 _timestamp
    ) public view override returns (uint256 nav, uint48 updateTime) {
        Nav[] storage navs = historicalNavs[_lsd];
        // short path: if the timestamp is the latest, return the latest nav.
        if (navs.length > 0 && _timestamp >= navs[navs.length - 1].updateTime) {
            return _decompressNavInfo(navs[navs.length - 1]);
        }

        // lower bound of the bsearch.
        uint256 low = 0;

        // optimization
        // In most cases, target nav is within the last 10 navs.
        if (navs.length >= 10 && _timestamp >= navs[navs.length - 10].updateTime) {
            low = navs.length - 10;
        }

        // binary search to find the largest nav whose timestamp is less than or equal to the given timestamp.
        return _decompressNavInfo(navs[_bsearchNavIndex(_lsd, _timestamp, low, navs.length)]);
    }

    /// @dev Performs a binary search to find the index of the NAV closest to, but not exceeding, the given timestamp
    /// Reverts if no suitable NAV is found.
    /// @param _lsd The address of the LSD token
    /// @param _timestamp The target timestamp
    /// @param low The lower boundary of the search range (inclusive).
    ///        The value of this index should always be less than the target timestamp
    /// @param high The upper boundary of the search range (exclusive), the value of this index should always
    ///        be greater than the target timestamp, or just invalid (e.g., the length of the array).
    /// @return index The index of the NAV entry closest to, but not exceeding, the given timestamp
    function _bsearchNavIndex(
        address _lsd,
        uint48 _timestamp,
        uint256 low,
        uint256 high
    ) internal view returns (uint256 index) {
        Nav[] storage navs = historicalNavs[_lsd];

        // check invalid range
        if (navs.length == 0 || navs[low].updateTime > _timestamp) {
            revert NavNotFound(_timestamp);
        }

        // searching while there's more than one element in the range
        while (low < high - 1) {
            uint256 m = Math.average(low, high);
            if (navs[m].updateTime <= _timestamp) {
                low = m;
            } else {
                high = m;
            }
        }
        return low;
    }

    /// @dev Helper function to compress nav and timestamp into one slot using struct
    function _compressNavInfo(uint256 nav, uint256 timestamp) internal pure returns (Nav memory) {
        return Nav(nav.toUint192(), timestamp.toUint48());
    }

    /// @dev Helper function to decompress nav and timestamp from one uint256
    function _decompressNavInfo(Nav memory navInfo) internal pure returns (uint256 nav, uint48 updateTime) {
        nav = uint256(navInfo.nav);
        updateTime = navInfo.updateTime;
    }
}
