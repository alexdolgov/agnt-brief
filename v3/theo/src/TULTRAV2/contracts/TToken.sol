// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {ERC4626WhitelistedUpgradeable} from "./vaults/ERC4626WhitelistedUpgradeable.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ITToken} from "./interfaces/ITToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {TTokenEscrow} from "./TTokenEscrow.sol";
import {ITheoWhitelist} from "./interfaces/ITheoWhitelist.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

/**
 * @notice  Inherits ERC4626WhitelistedUpgradeable
 * @dev     Implements escrows for async withdrawals
 * @dev     Implements optimistic deposits (asset not needed to mint shares)
 */

contract TToken is ERC4626WhitelistedUpgradeable, ITToken {
    /// @notice Role for minting TToken
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice Ttoken params, see `TTokenParams` struct in ITToken interface
    TTokenParams public tTokenParams;

    /// @notice tracks the total assets that are still pending deposit
    uint256 public totalAssetsPending;

    /// @notice safe guard for max escrow period allowed
    uint256 public constant MAX_ESCROW_DURATION = 30 days;

    /// @notice escrow information
    TTokenEscrow public escrowContract;
    mapping(address => UserEscrow) private userEscrows;
    EscrowStats private escrowStats;

    function initialize(
        string memory _name,
        string memory _symbol,
        TTokenParams memory _tTokenParams,
        ITheoWhitelist _whitelistContract
    ) public virtual onlyProxy initializer checkTTokenParams(_tTokenParams) {
        __ERC4626Whitelisted_init(_name, _symbol, _tTokenParams.asset, _whitelistContract);
        tTokenParams = _tTokenParams;
        escrowContract = new TTokenEscrow();
    }

    ///
    /// MODIFIERS
    ///

    /// @notice checks if TTokenParams are valid
    modifier checkTTokenParams(TTokenParams memory _tTokenParams) {
        // asset must be erc20
        if (_tTokenParams.asset == address(0)) {
            revert ErrorZeroAddress();
        }
        // cannot reset underlying asset
        if (tTokenParams.asset != address(0) && _tTokenParams.asset != tTokenParams.asset) {
            revert InvalidUnderlyingAsset();
        }
        // min shares must be greater than 0
        if (_tTokenParams.minShares == 0) {
            revert MinSharesError();
        }
        // cannot set escrow duration greater than max
        if (_tTokenParams.escrowDuration > MAX_ESCROW_DURATION) {
            revert MaxEscrowDurationExceeded(_tTokenParams.escrowDuration, MAX_ESCROW_DURATION);
        }
        // escrow asset must be set (same as underlying in most cases)
        if (_tTokenParams.escrowAsset == address(0)) {
            revert ErrorZeroAddress();
        }
        // if escrow asset is different from vault asset
        if (_tTokenParams.escrowAsset != _tTokenParams.asset) {
            // escrow duration cannot be zero
            if (_tTokenParams.escrowDuration == 0) {
                revert EscrowNotEnabled();
            }
            if (_tTokenParams.underlyingAssetReceiver == address(0)) {
                revert ErrorZeroAddress();
            }
        }
        // cannot change escrow asset if already set
        if (tTokenParams.escrowAsset != address(0) && _tTokenParams.escrowAsset != tTokenParams.escrowAsset) {
            revert InvalidEscrowAsset();
        }
        _;
    }

    /// @notice makes sure at least min shares are left in contract after function
    modifier checkMinShares() {
        _;
        uint256 _totalSupply = totalSupply();
        if (_totalSupply > 0 && _totalSupply < tTokenParams.minShares) revert MinSharesError();
    }

    /// @notice checks that the contract allows for optimistic deposits
    modifier allowPending() {
        if (!tTokenParams.allowPending) {
            revert OptimisticDepositNotAllowed();
        }
        _;
    }

    /// @notice checks that escrow is on
    modifier escrowOn() {
        if (tTokenParams.escrowDuration == 0) {
            revert EscrowNotEnabled();
        }
        _;
    }

    /// @notice checks that escrow is off
    modifier escrowOff() {
        if (tTokenParams.escrowDuration > 0) {
            revert EscrowNotDisabled();
        }
        _;
    }

    constructor() {}

    ///
    /// ERC4626 Override Functions (checks whitelist and min shares)
    ///
    function _deposit(address _caller, address _receiver, uint256 _assets, uint256 _shares) internal override checkMinShares {
        super._deposit(_caller, _receiver, _assets, _shares);
    }

    function withdraw(uint256 _assets, address _receiver, address _owner) public override(ERC4626Upgradeable, IERC4626) escrowOff returns (uint256) {
        return super.withdraw(_assets, _receiver, _owner);
    }

    function redeem(uint256 _shares, address _receiver, address _owner) public override(ERC4626Upgradeable, IERC4626) escrowOff returns (uint256) {
        return super.redeem(_shares, _receiver, _owner);
    }

    function _withdraw(address _caller, address _receiver, address _owner, uint256 _assets, uint256 _shares) internal override checkMinShares {
        super._withdraw(_caller, _receiver, _owner, _assets, _shares);
    }

    /** @dev See {ITToken-previewBeginEscrow} */
    function previewBeginEscrow(uint256 _shares) public view returns (uint256, address, uint256) {
        if (_shares == 0) {
            revert ZeroAssetsOrShares();
        }
        // get amount of assets for redemption
        uint256 underlyingAssets = previewRedeem(_shares);
        uint256 escrowAssets = sharesToEscrowAssets(_shares);

        return (underlyingAssets, tTokenParams.escrowAsset, escrowAssets);
    }

    /** @dev See {ITToken-beginEscrow} */
    function beginEscrow(uint256 _shares, address _owner) external override escrowOn returns (address, uint256) {
        uint256 maxShares = maxRedeem(_owner);
        if (_shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(_owner, _shares, maxShares);
        }

        (uint256 underlyingAssets, address escrowAsset, uint256 escrowAssetAmount) = previewBeginEscrow(_shares);

        // update user escrow information
        UserEscrow storage userEscrow = userEscrows[_owner];
        userEscrow.escrowEnd = block.timestamp + tTokenParams.escrowDuration;
        userEscrow.shares += _shares;
        userEscrow.underlyingAmount += underlyingAssets;
        userEscrow.escrowAsset = escrowAsset;
        userEscrow.escrowAmount += escrowAssetAmount;

        // add all escrow details to global escrow stats
        escrowStats.totalShares += _shares;
        escrowStats.totalUnderlying += underlyingAssets;
        escrowStats.totalEscrowAsset += escrowAssetAmount;

        // check if escrow asset is the same as underlying asset
        if (tTokenParams.escrowAsset != tTokenParams.asset) {
            // if not, underlying asset must go to underlying asset receiver to convert to escrow asset
            _withdraw(msg.sender, tTokenParams.underlyingAssetReceiver, _owner, underlyingAssets, _shares);
        } else {
            // withdraw to the escrow contract where the user can claim the assets
            _withdraw(msg.sender, address(escrowContract), _owner, underlyingAssets, _shares);
        }

        emit EscrowBegin(_owner, _shares, underlyingAssets, escrowAsset, escrowAssetAmount, userEscrow.escrowEnd);

        return (tTokenParams.escrowAsset, escrowAssetAmount);
    }

    /** @dev See {ITToken-endEscrow} */
    function endEscrow(address _owner) external {
        UserEscrow memory userEscrow = userEscrows[_owner];
        if (userEscrow.escrowEnd > block.timestamp) {
            revert EscrowIncomplete();
        }
        if (userEscrow.shares == 0) {
            revert ZeroAssetsOrShares();
        }

        // update global escrow stats
        escrowStats.totalShares -= userEscrow.shares;
        escrowStats.totalUnderlying -= userEscrow.underlyingAmount;
        escrowStats.totalEscrowAsset -= userEscrow.escrowAmount;

        // update user escrow information
        delete userEscrows[_owner];

        // send tokens to user
        escrowContract.endEscrow(_owner, userEscrow);

        emit EscrowEnd(_owner, userEscrow.shares, userEscrow.underlyingAmount, userEscrow.escrowAsset, userEscrow.escrowAmount);
    }

    ///
    /// OPTIMISTIC DEPOSIT/MINT
    ///

    /** @dev See {ITToken-depositOptimistic} */
    function depositOptimistic(uint256 _assets, address _receiver) external onlyRole(MINTER_ROLE) returns (uint256 shares) {
        uint256 maxAssets = maxDeposit(_receiver);
        if (_assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(_receiver, _assets, maxAssets);
        }
        shares = previewDeposit(_assets);

        _optimisticMint(msg.sender, _receiver, _assets, shares);

        return shares;
    }

    /** @dev See {ITToken-mintOptimistic} */
    function mintOptimistic(uint256 _shares, address _receiver) external onlyRole(MINTER_ROLE) returns (uint256 assets) {
        uint256 maxShares = maxMint(_receiver);
        if (_shares > maxShares) {
            revert ERC4626ExceededMaxMint(_receiver, _shares, maxShares);
        }
        assets = previewMint(_shares);

        _optimisticMint(msg.sender, _receiver, assets, _shares);

        return assets;
    }

    /**
     * @notice Internal function to handle optimistic minting
     * @dev Only can be used if `allowPending` is true and minShares are respected
     */
    function _optimisticMint(address _caller, address _receiver, uint256 _assets, uint256 _shares) internal allowPending checkMinShares {
        // no transfer of assets since this is optimistic
        _mint(_receiver, _shares);

        // update pending assets
        totalAssetsPending += _assets;

        emit Deposit(_caller, _receiver, _assets, _shares);
        // emit optimistic deposit event as well for clarity
        emit DepositOptimistic(_caller, _receiver, _assets, _shares);
    }

    /** @dev See {ITToken-completePending} */
    function completePending(uint256 _assets) external onlyRole(MINTER_ROLE) {
        if (_assets > totalAssetsPending) {
            _assets = totalAssetsPending;
        }
        SafeERC20.safeTransferFrom(IERC20(asset()), msg.sender, address(this), _assets);
        // update total assets
        totalAssetsPending -= _assets;
        emit CompletePending(msg.sender, _assets);
    }

    ///
    /// GETTERS
    ///

    /** @dev See {ITToken-getTTokenParams} */
    function getTTokenParams() external view returns (TTokenParams memory) {
        return tTokenParams;
    }

    /** @dev See {ITToken-totalAssets} */
    function totalAssets() public view override(ERC4626Upgradeable, ITToken, IERC4626) returns (uint256) {
        return super.totalAssets() + totalAssetsPending;
    }

    /** @dev See {ITToken-maxWithdraw} */
    function maxWithdraw(address _owner) public view override(ERC4626Upgradeable, ITToken, IERC4626) returns (uint256) {
        uint256 contractAssets = IERC20(asset()).balanceOf(address(this));
        uint256 maxAssets = super.maxWithdraw(_owner);
        if (maxAssets > contractAssets) {
            return contractAssets;
        }
        return maxAssets;
    }

    /** @dev See {ITToken-maxRedeem} */
    function maxRedeem(address _owner) public view override(ERC4626Upgradeable, ITToken, IERC4626) returns (uint256) {
        // convert max withdraw to shares
        uint256 maxAssets = maxWithdraw(_owner);
        return convertToShares(maxAssets);
    }

    /** @dev See {ITToken-getUserEscrow} */
    function getUserEscrow(address _account) external view returns (UserEscrow memory) {
        return userEscrows[_account];
    }

    /** @dev See {ITToken-getEscrowStats} */
    function getEscrowStats() external view returns (EscrowStats memory) {
        return escrowStats;
    }

    /** @dev See {ITToken-sharesToEscrowAssets} */
    function sharesToEscrowAssets(uint256 shares) public view returns (uint256) {
        uint256 underlyingAssets = convertToAssets(shares);
        if (tTokenParams.escrowAsset == asset()) {
            return underlyingAssets;
        }
        return _underlyingAssetsToEscrowAssets(underlyingAssets);
    }

    /**
     * @notice implementations must override this function if using escrow asset different from underlying asset
     * @dev each tToken will have a different implementation of this function
     */

    function _underlyingAssetsToEscrowAssets(uint256) internal view virtual returns (uint256) {
        revert("Not implemented");
    }

    ///
    /// SETTERS
    ///

    /** @dev See {ITToken-setTTokenParams} */
    function setTTokenParams(TTokenParams calldata _tTokenParams) external onlyRole(DEFAULT_ADMIN_ROLE) checkTTokenParams(_tTokenParams) {
        tTokenParams = _tTokenParams;
    }

    /** @dev See {ITToken-setMinter} */
    function setMinter(address _minter, bool _status) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_status) {
            _grantRole(MINTER_ROLE, _minter);
        } else {
            _revokeRole(MINTER_ROLE, _minter);
        }
    }

    /** @dev See {ITToken-seize} */
    function seize(address _from, address _to, uint256 _shares, string memory _reason) external onlyRole(DEFAULT_ADMIN_ROLE) onlyCanTransfer(_to) {
        if (_shares == 0) {
            revert ZeroAssetsOrShares();
        }
        if (_from == address(0) || _to == address(0)) {
            revert ErrorZeroAddress();
        }
        if (!whitelistContract.isBlacklisted(_from)) {
            revert SeizeNotAllowed(_from);
        }
        uint256 maxShares = balanceOf(_from);
        if (_shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(_from, _shares, maxShares);
        }
        _updateUnchecked(_from, _to, _shares);

        emit Seize(_from, _to, _shares, _reason);
    }

    function supportsInterface(bytes4 interfaceId) public view override(AccessControlUpgradeable, IERC165) returns (bool) {
        return interfaceId == type(ITToken).interfaceId || super.supportsInterface(interfaceId);
    }
}
