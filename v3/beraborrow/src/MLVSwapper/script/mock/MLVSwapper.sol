// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {IRebalancer} from "src/interfaces/utils/integrations/IRebalancer.sol";
import {ILiquidStabilityPool} from "src/interfaces/core/ILiquidStabilityPool.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {UtilsLib} from "src/libraries/UtilsLib.sol";
import {ReentrancyGuardLib} from "src/libraries/ReentrancyGuardLib.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {Math} from "@openzeppelin-upgradeable/contracts/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {ILSPRouter} from "src/interfaces/periphery/ILSPRouter.sol";



/**
 * @title MLVSwapper
 * @author Beraborrow
 * @notice A contract that handles swaps for ManagedLeveragedVault
 * @dev This contract implements the IRebalancer interface
 */
contract MLVSwapper is IRebalancer, UUPSUpgradeable {
    using UtilsLib for bytes;
    using PriceLib for uint;
    using Math for uint256;
    
    struct InitParams {
        IERC20 _nect;
        IInfraredCollateralVault _bbsNect;
        ILiquidStabilityPool _sNect;
        IMetaBeraborrowCore _bbCore;
        address[] _whitelistedSwappers;
        address[] _whitelistedVaults;
    }

    /// @custom:storage-location erc7201:openzeppelin.storage.MLVSwapper
    struct MLVSwapperStorage {
        IERC20 nect;
        IInfraredCollateralVault bbsNect;
        ILiquidStabilityPool sNect;
        IMetaBeraborrowCore bbCore;
        mapping(address => bool) whitelistedSwappers;
        mapping(address => bool) whitelistedVaults; // msg senders that will be able to execute swaps
        mapping(address => uint)  _lastRebalanceForMlv;
        ILSPRouter lspRouter;
    }
    
    event SwapperWhitelistUpdated(address indexed swapper, bool isWhitelisted);
    event VaultWhitelistUpdated(address indexed vault, bool isWhitelisted);

    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.MLVSwapper")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant MLVSwapperStorageLocation =
        0x8f9dca134c0f5d36a6cbec09049849e4e1c35d9a7e8dd905148da5ae30a8fd00;

    function _getMLVSwapperStorage() internal pure returns (MLVSwapperStorage storage store) {
        assembly {
            store.slot := MLVSwapperStorageLocation
        }
    }

    modifier onlyOwner() {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();

        require(msg.sender == $.bbCore.owner(), "MLV swapper: not owner");
        _;
    }

    modifier onlyAllowedCaller() {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();

        require($.whitelistedVaults[msg.sender], "MLV: not allowed caller");
        _;
    }

    modifier nonReentrant() {
        ReentrancyGuardLib._guard();
        _;
        ReentrancyGuardLib._unlockGuard();
    }


    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the MLVSwapper contract
     * @param params The initialization parameters
     */
    function initialize(MLVSwapper.InitParams calldata params)
     external initializer {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        
        require(address(params._nect) != address(0), "MLVSwapper: nect cannot be zero address");
        require(address(params._bbsNect) != address(0), "MLVSwapper: bbsNect cannot be zero address");
        require(address(params._sNect) != address(0), "MLVSwapper: sNect cannot be zero address");
        require(address(params._bbCore) != address(0), "MLVSwapper: bbCore cannot be zero address");
        
        $.nect = params._nect;
        $.bbsNect = params._bbsNect;
        $.sNect = params._sNect;
        $.bbCore = params._bbCore;
        
        // Add whitelisted swappers
        for (uint256 i = 0; i < params._whitelistedSwappers.length; i++) {
            _setWhitelistedSwapper(params._whitelistedSwappers[i], true);
        }
        
        // Add whitelisted vaults
        for (uint256 i = 0; i < params._whitelistedVaults.length; i++) {
            _setWhitelistedVault(params._whitelistedVaults[i], true);
        }
    }
    /**
     * @notice Swaps one token for another using a specified protocol
     * @param sentCurrency The address of the token being sent
     * @param sentAmount The amount of the token being sent
     * @param receivedCurrency The address of the token to receive
     * @param payload Additional data required for the swap
     */
    function swap(
        address sentCurrency,
        uint sentAmount,
        address receivedCurrency,
        bytes calldata payload
    ) external onlyAllowedCaller nonReentrant {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();

        address exposureToken;

        if (sentCurrency == address($.sNect) || sentCurrency == address($.bbsNect)) {
            exposureToken = sentCurrency;
        } else if (receivedCurrency == address($.sNect) ||receivedCurrency == address($.bbsNect)) {
            exposureToken = receivedCurrency;
        }
        
        bool isNectExposureSwap = (
            (sentCurrency == address($.nect) && receivedCurrency == exposureToken) ||
            (sentCurrency == exposureToken && receivedCurrency == address($.nect))
        );
        
        if (isNectExposureSwap) {
            _checkSwapTimeout();        
            // This is a NECT <-> exposure token swap
            if (sentCurrency == address($.nect)) {
                _wrapNectToExposure(sentAmount, exposureToken);
            } else {
                _unwrapExposureToNect(sentAmount, exposureToken, msg.sender, payload);
            }
        } else {
            uint swappedValue = _getValue(sentCurrency, sentAmount);

            if(swappedValue <= 0.7e18 && receivedCurrency == address($.nect)) {
                _executeDonationSwap(
                    swappedValue,
                    receivedCurrency
                );
            } else {
                address sentToken = sentCurrency;
                uint _sentAmount = sentAmount;
                // Decode the payload into router address and swap data
                (address executor, bytes memory swapData) = abi.decode(payload, (address, bytes));

                if (sentCurrency == exposureToken) {

                    uint prevNectBalance = $.nect.balanceOf(address(this));
                    _unwrapExposureToNect(_sentAmount, exposureToken, address(this), payload);
                    uint afterNectBalance = $.nect.balanceOf(address(this));

                    _sentAmount = afterNectBalance - prevNectBalance;
                    sentToken = address($.nect);
                }

                require(executor != address(0), "MLVSwapper: router address cannot be zero");
                _executeEnsoSwap(sentToken, _sentAmount, /*receivedCurrency,*/ executor, swapData);
            }  
        }
    }


    function _wrapNectToExposure(uint sentAmount, address exposureToken) internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        
        if(exposureToken == address($.bbsNect)) {
            uint receivedShares = $.sNect.deposit(sentAmount, address(this));

            $.sNect.approve(address($.bbsNect), receivedShares);

            $.bbsNect.deposit(receivedShares, msg.sender);
        } else {
            $.nect.approve(address($.sNect), sentAmount);
            $.sNect.deposit(sentAmount, msg.sender);
        }
    }

    function _unwrapExposureToNect(uint sentAmount, address exposureToken, address receiver, bytes calldata payload) internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        (bytes[] memory tokensSwapCalldatas, address swapRouter, uint256 minTargetTokenAmount) = abi.decode(payload, (bytes[], address, uint256));
        // that get us some dust rewarded tokens 
        uint receivedSnect = sentAmount;
        if(exposureToken == address($.bbsNect)) {
            $.bbsNect.redeem(sentAmount, address(this), address(this));
            receivedSnect = $.sNect.balanceOf(address(this));
        }

        $.sNect.approve(address($.lspRouter), receivedSnect);
        $.lspRouter.redeemToOne(ILSPRouter.RedeemToOneParams({
            shares: receivedSnect,
            minAssetsWithdrawn: 0,
            targetToken: address($.nect),
            receiver: receiver,
            caller: address(this),
            tokensSwapCalldatas: tokensSwapCalldatas,
            minTargetTokenAmount: minTargetTokenAmount,
            swapRouter: swapRouter
        }));
    }

    function _executeEnsoSwap(
        address sentCurrency,
        uint sentAmount,
        //address receivedCurrency,
        address executor,
        bytes memory swapData
    ) internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();

        require($.whitelistedSwappers[executor], "MLV swapper: executor not whitelisted");
        IERC20(sentCurrency).approve(executor, sentAmount);
        (bool success, bytes memory retData) = executor.call(swapData);
        if (!success) {
            retData.bubbleUpRevert();
        }
    }

    // it takes receivedCurrency and sends back proportional amount of targetCurrency
    // only for low amounts
    function _executeDonationSwap(
        uint swapValue,  
        address receivedCurrency // force that to be nect?
    ) internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
  
        require(receivedCurrency == address($.nect), "MLVSwapper: receivedCurrency for donations must be NECT");
        
        uint nectBalance = $.nect.balanceOf(address(this));
        require(nectBalance >= swapValue, "MLVSwapper: insufficient NECT balance for donation");
        
        $.nect.transfer(msg.sender, swapValue);
    }

    function setWhitelistedSwapper(address newSwapper, bool status) external onlyOwner {
        _setWhitelistedSwapper(newSwapper, status);
    }

    function _setWhitelistedSwapper(address newSwapper, bool status) internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
    
        $.whitelistedSwappers[newSwapper] = status;
        emit SwapperWhitelistUpdated(newSwapper, status);
    }

    function _checkSwapTimeout() internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();

        uint lastRebalance = $._lastRebalanceForMlv[msg.sender];

        if(lastRebalance != 0) {
            require(block.timestamp >= lastRebalance + 5 minutes, "MLVSwapper: rebalance too frequent");
        }

        $._lastRebalanceForMlv[msg.sender] = block.timestamp;
    }

    function setWhitelistedVault(address newVault, bool status) external onlyOwner {
        _setWhitelistedVault(newVault, status);
    }

    function _setWhitelistedVault(address newVault, bool status) internal {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();

        $.whitelistedVaults[newVault] = status;
        emit VaultWhitelistUpdated(newVault, status);
    }
    function _getValue(address token, uint amount) internal view returns (uint) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        IPriceFeed pricefeed = IPriceFeed($.bbCore.priceFeed());
        
        uint tokenPrice = pricefeed.fetchPrice(token);

        return PriceLib.convertToValue(amount, tokenPrice, IAsset(token).decimals());
    }

    /**
     * @notice Allows the owner to claim any tokens that might be locked in the contract
     * @param tokens An array of token addresses to claim
     * @dev Only callable by the owner of the BeraBorrow Core
     */
    function claimLockedTokens(address[] calldata tokens, address receiver) external onlyOwner {
        require(receiver != address(0));
        
        for (uint256 i; i < tokens.length; ++i) {
            address token = tokens[i];
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (balance > 0) {
                IERC20(token).transfer(receiver, balance);
            }
        }
    }

    function updateLspRouter(address _lspRouter) external onlyOwner {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        $.lspRouter = ILSPRouter(_lspRouter);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /**
     * @notice Returns the NECT token address
     * @return The address of the NECT token
     */
    function nect() external view returns (address) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return address($.nect);
    }

    /**
     * @notice Returns the bbsNect token address
     * @return The address of the bbsNect token
     */
    function bbsNect() external view returns (address) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return address($.bbsNect);
    }

    /**
     * @notice Returns the sNect token address
     * @return The address of the sNect token
     */
    function sNect() external view returns (address) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return address($.sNect);
    }

    /**
     * @notice Returns the BeraBorrow Core address
     * @return The address of the BeraBorrow Core
     */
    function bbCore() external view returns (address) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return address($.bbCore);
    }

    /**
     * @notice Checks if a swapper is whitelisted
     * @param swapper The address to check
     * @return True if the swapper is whitelisted, false otherwise
     */
    function whitelistedSwappers(address swapper) external view returns (bool) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return $.whitelistedSwappers[swapper];
    }

    /**
     * @notice Checks if a vault is whitelisted
     * @param vault The address to check
     * @return True if the vault is whitelisted, false otherwise
     */
    function whitelistedVaults(address vault) external view returns (bool) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return $.whitelistedVaults[vault];
    }

    /**
     * @notice Gets the timestamp of the last rebalance for a specific MLV
     * @param mlv The address of the MLV
     * @return The timestamp of the last rebalance
     */
    function lastRebalanceForMlv(address mlv) external view returns (uint) {
        MLVSwapperStorage storage $ = _getMLVSwapperStorage();
        return $._lastRebalanceForMlv[mlv];
    }
}