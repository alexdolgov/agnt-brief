// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./lossless/interfaces/ILosslessController.sol";
import "./lossless/LERC20.sol";

error VapeToken__GenesisMintDone();
error VapeToken__MaxSupplyReached();

// VapeToken with Governance

/// @title VapeToken
/// @author mejiasd3v
/// @notice Main VAPE token contract
contract VapeToken is LERC20, Ownable {
    /// STORAGE ///
    ///////////////
    uint224 public constant MAX_SUPPLY = 21_000_000 * 1e18;

    /////////////////
    /// MODIFIERS ///
    /////////////////

    modifier lssMint(address account, uint256 amount) {
        if (isLosslessOn) {
            lossless.beforeMint(account, amount);
        }
        _;
    }

    modifier lssBurn(address account, uint256 amount) {
        if (isLosslessOn) {
            lossless.beforeBurn(account, amount);
        }
        _;
    }

    /////////////
    /// LOGIC ///
    /////////////
    constructor(
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol,
        address _admin,
        address _recoveryAdmin,
        uint256 _timelockPeriod,
        address _lossless
    ) LERC20(_initialSupply, _name, _symbol, _admin, _recoveryAdmin, _timelockPeriod, _lossless) {}

    /// @notice Creates `_amount` token to `_to`
    /// @dev Must only be called by the owner (EmissionsManager)
    function mint(address _to, uint256 _amount) external onlyOwner lssMint(_to, _amount) {
        _mint(_to, _amount);
    }

    /// @notice Creates 420,000 token to _to, can only be called by the owner, once
    /// @dev Must only be called by the owner (EmissionsManager) once
    function genesisMint(address _to) external onlyOwner {
        if (totalSupply() != 0) revert VapeToken__GenesisMintDone();
        _mint(_to, 420_000 * 1e18);
    }

    /// @notice Burns `_amount` token from `_from`
    function burn(uint256 amount) external lssBurn(_msgSender(), amount) {
        _burn(_msgSender(), amount);
    }

    /////////////////
    /// OVERRIDES ///
    /////////////////

    function _maxSupply() internal view virtual override returns (uint224) {
        return MAX_SUPPLY;
    }
}
