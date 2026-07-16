pragma solidity ^0.8.20;

import {IRebasingToken, IERC20Metadata} from "./IRebasingToken.sol";

import {IERC20, ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {Math} from "openzeppelin-contracts/utils/math/Math.sol";
import {KYCWhitelist} from "./KYCWhitelist.sol";

/**
 * @title RebasingToken
 * @notice Abstract contract for rebasing tokens that automatically adjust balances based on an assets-per-share ratio
 * @dev Implements IRebasingToken interface
 */
abstract contract RebasingToken is ERC20Upgradeable, IRebasingToken {
    error TransferNotAllowed();
    error ZeroAddress();
    
    KYCWhitelist public immutable KYC_WHITELIST;

    uint8 private _decimals;

    constructor(address kycWhitelist) {
        if (kycWhitelist == address(0)) revert ZeroAddress();
        KYC_WHITELIST = KYCWhitelist(kycWhitelist);
    }

    function __RebasingToken_init(string memory name, string memory symbol, uint8 tokenDecimals) internal onlyInitializing {
        __ERC20_init(name, symbol);
        _decimals = tokenDecimals;
    }

    function mintedSharesOf(address account) public view returns (uint256) {
        return super.balanceOf(account);
    }

    function pendingMintShares(address account) public view virtual returns (uint256);

    function sharesOf(address account) public view returns (uint256) {
        return mintedSharesOf(account) + pendingMintShares(account);
    }

    function totalMintedShares() public view returns (uint256) {
        return super.totalSupply();
    }

    function totalNonMintedShares() public view virtual returns (uint256);

    function totalShares() public view returns (uint256) {
        return totalMintedShares() + totalNonMintedShares();
    }
    
    function activeBalanceOf(address account) public view returns (uint256) {
        return convertToAssets(sharesOf(account), assetsPerShare());
    }

    function inactiveBalanceOf(address account) public view virtual returns (uint256);

    function balanceOf(address account) public view override(IERC20, ERC20Upgradeable) returns (uint256) {
        return activeBalanceOf(account);
    }

    function activeSupply() public view returns (uint256) {
        return convertToAssets(totalShares(), assetsPerShare());
    }

    function inactiveSupply() public view virtual returns (uint256);

    function totalSupply() public view override(IERC20, ERC20Upgradeable) returns (uint256) {
        return activeSupply();
    }

    function convertToShares(uint256 assets, uint256 _assetsPerShare) public view virtual returns (uint256) {
        return Math.mulDiv(assets, 10 ** _decimals, _assetsPerShare);
    }

    function convertToShares(uint256 assets) public view virtual returns (uint256) {
        return convertToShares(assets, assetsPerShare());
    }

    function convertToAssets(uint256 shares, uint256 _assetsPerShare) public view virtual returns (uint256) {
        return Math.mulDiv(shares, _assetsPerShare, 10 ** _decimals);
    }

    function convertToAssets(uint256 shares) public view virtual returns (uint256) {
        return convertToAssets(shares, assetsPerShare());
    }

    function transfer(address to, uint256 value) public virtual override (IERC20, ERC20Upgradeable) returns (bool) {
        uint256 shares = convertToShares(value, assetsPerShare());

        return super.transfer(to, shares);
    }

    function transferFrom(address from, address to, uint256 value) public virtual override (IERC20, ERC20Upgradeable) returns (bool) {
        uint256 shares = convertToShares(value, assetsPerShare());

        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, shares);
        return true;
    }

    function assetsPerShare() public view virtual returns (uint256);

    function _clearDeposit(address user) internal virtual;

    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable) {
        if (!KYC_WHITELIST.canTransfer(address(this), from, to)) revert TransferNotAllowed();

        if (from != address(0) && to != address(0)) {
            // If it's not a mint or burn, clear the deposits
            _clearDeposit(from);
        }

        super._update(from, to, value);
    }

    function decimals() public view override(IERC20Metadata, ERC20Upgradeable) returns (uint8) {
        return _decimals;
    }
}