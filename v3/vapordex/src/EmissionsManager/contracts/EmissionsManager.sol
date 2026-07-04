// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./interfaces/IVape.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

error EmissionsManager__MintLimitHit();
error EmissionsManager__NotEnoughBalance();
error EmissionsManager__NotmVapeHolder();
error EmissionsManager__GenesisMintDone();
error EmissionsManager__NotOwner();
error EmissionsManager__MVapeUninitialized();

/// @title EmissionsManager
/// @author royvardhan
/// @notice Emissions manager contract
/// @dev Utilizes 'Initializable', 'OwnableUpgradeable', 'IERC20', 'IVape'
contract EmissionsManager is Initializable, OwnableUpgradeable {
    //////////////
    /// EVENTS ///
    //////////////

    event VapeEmitted(uint256 amount, address indexed to);
    event GenesisMint(uint256 timestamp);

    ///////////////////////
    /// PRIVATE STORAGE ///
    ///////////////////////

    IVape s_vape;

    IERC20 s_mVape;

    address constant BURN_WALLET = address(1);

    address s_genesisStaking;

    ///////////////
    /// STORAGE ///
    ///////////////

    uint256 public totalVapeMinted;

    /////////////////
    /// MODIFIERS ///
    /////////////////

    modifier mVapeHolder() {
        if (s_mVape.balanceOf(msg.sender) == 0) {
            revert EmissionsManager__NotmVapeHolder();
        }
        _;
    }

    modifier supplyCheck(uint256 _amount) {
        uint256 vapeSupply = s_vape.totalSupply();
        uint256 mintLimit = (vapeSupply * 60) / 100;

        if (totalVapeMinted + _amount > mintLimit) {
            revert EmissionsManager__MintLimitHit();
        }

        _;
    }

    //////////////////////
    /// INITIALIZER //////
    //////////////////////

    // Upgradeable contracts cannot have an constructor, hence using Initializer
    function initialize(address _vape, address _genesisStaking) public initializer {
        s_vape = IVape(_vape);
        s_genesisStaking = _genesisStaking;
        __Ownable_init();
    }

    //////////////////////
    /// EXTERNAL LOGIC ///
    //////////////////////

    /// @notice Burns mVape and mints Vape
    /// @param _amount Amount of mVape to convert
    /// @dev Only mVapeHolder can call this function
    /// @dev supplyCheck ensures mints do not exceed 60% of the total Vape supply
    function convertMVape(uint256 _amount) external mVapeHolder supplyCheck(_amount) {
        if (address(s_mVape) == address(0)) {
            revert EmissionsManager__MVapeUninitialized();
        }
        s_mVape.transferFrom(msg.sender, BURN_WALLET, _amount); // @audit
        s_vape.mint(msg.sender, _amount); // @audit
        unchecked {
            ++totalVapeMinted;
        }
        emit VapeEmitted(_amount, msg.sender);
    }

    /// @notice Mints 420000 Vape to Genesis
    /// @dev Only owner can call this function
    /// @dev Will revert if balance of genesis exceeds 0
    function genesisMint() external onlyOwner {
        uint256 genesisBalance = s_vape.balanceOf(s_genesisStaking);
        if (genesisBalance > 0) {
            revert EmissionsManager__GenesisMintDone();
        }
        s_vape.genesisMint(s_genesisStaking);

        emit GenesisMint(block.timestamp);
    }

    function initMVAPE(address _mvape) external onlyOwner {
        s_mVape = IERC20(_mvape);
    }

    ///////////////
    /// GETTERS ///
    ///////////////

    function vape() external view returns (address) {
        return address(s_vape);
    }

    function mVape() external view returns (address) {
        return address(s_mVape);
    }

    function genesisStaking() external view returns (address) {
        return s_genesisStaking;
    }

    function burnWallet() external pure returns (address) {
        return BURN_WALLET;
    }

    /////////////
    /// ADMIN ///
    /////////////

    function transferVapeOwnership(address _newOwner) external onlyOwner {
        s_vape.transferOwnership(_newOwner);
    }
}
