// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {IMToken} from "./interfaces/IMToken.sol";

contract MToken is IMToken, ERC20Upgradeable, AccessControlUpgradeable {
    // handler role
    bytes32 public constant RATIO_UPDATE_ROLE = keccak256("RATIO_UPDATE_ROLE");

    // minter role
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    // burner role
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    // Base value for rewardMultiplier
    uint256 public constant BASE = 1e18;

    /**
     * @dev rewardMultiplier represents a coefficient used in reward calculation logic.
     * The value is represented with 18 decimal places for precision.
     */
    uint256 public rewardMultiplier;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        string memory name_,
        string memory symbol_
    ) public initializer {
        __ERC20_init(name_, symbol_);
        _grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
        rewardMultiplier = BASE;
    }

    // mint, only handler can mint
    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    // burn, only handler can burn
    function burn(address from, uint256 amount) public onlyRole(BURNER_ROLE) {
        _burn(from, amount);
    }

    // function mint according to asset amount
    function mintWithAssetAmount(
        uint256 assetAmount,
        address receiver
    ) public onlyRole(MINTER_ROLE) returns (uint) {
        uint256 shares = convertToShares(assetAmount);
        _mint(receiver, shares);
        return shares;
    }

    /**
     * @notice Converts an amount of tokens to shares.
     * @param assetAmount The amount of tokens to convert.
     * @return The equivalent amount of shares.
     *
     * Note: All rounding errors should be rounded down in the interest of the protocol's safety.
     * Token transfers, including mint and burn operations, may require a rounding, leading to potential
     * transferring at most one GWEI less than expected aggregated over a long period of time.
     */
    function convertToShares(
        uint256 assetAmount
    ) public view returns (uint256) {
        return (assetAmount * BASE) / rewardMultiplier;
    }

    /**
     * @notice Converts an amount of shares to tokens.
     * @param shares The amount of shares to convert.
     * @return The equivalent amount of tokens.
     */
    function convertToTokens(uint256 shares) public view returns (uint256) {
        return (shares * rewardMultiplier) / BASE;
    }

    // set reward multiplier
    function updateRewardMultiplier(
        uint256 _rewardMultiplier
    ) public onlyRole(RATIO_UPDATE_ROLE) {
        uint oldRewardMultiplier = rewardMultiplier;
        rewardMultiplier = _rewardMultiplier;

        emit UpdateRewardMultiplier(oldRewardMultiplier, _rewardMultiplier);
    }
}
