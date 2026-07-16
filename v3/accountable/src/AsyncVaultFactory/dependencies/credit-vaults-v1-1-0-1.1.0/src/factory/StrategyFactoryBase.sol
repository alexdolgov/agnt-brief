// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IStrategyFactoryBase} from "../interfaces/IStrategyFactory.sol";

import {Authorizable} from "../access/Authorizable.sol";
import {InvalidRange, OutOfBounds, KYCNotVerified, AssetNotWhitelisted, Unauthorized} from "../constants/Errors.sol";

import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Ownable2Step, Ownable} from "@openzeppelin/contracts/access/Ownable2Step.sol";

abstract contract StrategyFactoryBase is IStrategyFactoryBase, Ownable2Step, Pausable, Authorizable {
    string internal constant NO_VAULT = "no vault on strategy";
    string internal constant NO_REWARDS = "no rewards on strategy";
    string internal constant ZERO_LOAN_PROXY_ADDRESS = "zero loan proxy address";

    /// @notice Whether asset whitelisting is enabled
    bool public enableWhitelist;

    /// @notice The global registry address
    address public globals;

    /// @notice The fee manager address for created loans
    address public feeManager;

    /// @notice The implementation contract for an Accountable strategy
    address public strategyImplementation;

    /// @notice Array of all created strategy proxy addresses
    address[] public strategyProxies;

    /// @notice Mapping of assets to whether they are whitelisted or not
    mapping(address asset => bool whitelisted) public assetStatus;

    /// @notice Mapping of strategy addresses to their associated vault addresses
    mapping(address strategy => address vault) public strategyVaults;

    modifier onlyVerified() {
        if (signer != address(0)) {
            if (!_verify(msg.sender, msg.data)) revert KYCNotVerified();
        }
        _;
    }

    modifier onlyWhitelistedAsset(address asset) {
        if (enableWhitelist) {
            if (!assetStatus[asset]) revert AssetNotWhitelisted();
        }
        _;
    }

    /// @notice Initializes the factory with a global registry address
    /// @param globals_ The global registry address
    constructor(address globals_, address owner_) Ownable(owner_) {
        globals = globals_;
    }

    /// @inheritdoc IStrategyFactoryBase
    function setGlobals(address globals_) external onlyOwner {
        address oldGlobals = globals;
        globals = globals_;
        emit GlobalsSet(oldGlobals, globals);
    }

    /// @inheritdoc IStrategyFactoryBase
    function setFeeManager(address feeManager_) external onlyOwner {
        address oldFeeManager = feeManager;
        feeManager = feeManager_;
        emit FeeManagerSet(oldFeeManager, feeManager);
    }

    function setSigner(address signer_) public override onlyOwner {
        super.setSigner(signer_);
    }

    /// @inheritdoc IStrategyFactoryBase
    function setStrategyImplementation(address strategyImplementation_) external onlyOwner {
        address oldStrategyImplementation = strategyImplementation;
        strategyImplementation = strategyImplementation_;
        emit StrategyImplementationSet(oldStrategyImplementation, strategyImplementation);
    }

    /// @inheritdoc IStrategyFactoryBase
    function setWhitelist(bool enable) external onlyOwner {
        enableWhitelist = enable;
        emit WhitelistSet(enableWhitelist);
    }

    /// @inheritdoc IStrategyFactoryBase
    function setAssetWhitelist(address asset) external onlyOwner {
        assetStatus[asset] = !assetStatus[asset];
        emit AssetWhitelistSet(asset, assetStatus[asset]);
    }

    /// @inheritdoc IStrategyFactoryBase
    function getStrategyVault(address strategy_) external view returns (address) {
        return strategyVaults[strategy_];
    }

    /// @inheritdoc IStrategyFactoryBase
    function getStrategiesPaginated(uint256 start, uint256 end) external view returns (address[] memory) {
        if (start > end) revert InvalidRange();
        if (end > strategyProxies.length) revert OutOfBounds();

        uint256 len = end - start;
        address[] memory result = new address[](len);

        for (uint256 i = 0; i < len;) {
            result[i] = strategyProxies[start + i];
            unchecked {
                ++i;
            }
        }
        return result;
    }

    /// @inheritdoc IStrategyFactoryBase
    function getStrategiesCount() external view returns (uint256) {
        return strategyProxies.length;
    }

    /// @notice Pauses strategy creation
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpauses strategy creation
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @dev Prevents renouncement of ownership
    function renounceOwnership() public virtual override onlyOwner {
        revert Unauthorized();
    }
}
