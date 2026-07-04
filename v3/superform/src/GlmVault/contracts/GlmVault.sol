// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

import { IERC20Upgradeable, SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import { IExchangeRouter } from "./interfaces/Gmx/IExchangeRouter.sol";

import { IGlmManager } from "./interfaces/IGlmManager.sol";
import { IGlmVault } from "./interfaces/IGlmVault.sol";
import { IGlmRouter } from "./interfaces/IGlmRouter.sol";

import { IGlmRebalance } from "./interfaces/IGlmRebalance.sol";
import { IGlmRebalanceCallback } from "./interfaces/IGlmRebalanceCallback.sol";
import { IGlmPriceReader } from "./interfaces/IGlmPriceReader.sol";
import { IGlmFeeCalculator } from "./interfaces/IGlmFeeCalculator.sol";
import { IGlmAddresses } from "./interfaces/IGlmAddresses.sol";

/**
 * @title Glm Index Token Vault
 * @notice This contract is responsible for minting and burning of Glm Token
 * @author Vaultka
 **/

contract GlmVault is IGlmAddresses, IGlmVault, OwnableUpgradeable, ERC4626Upgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    address public glmKeeper;
    address public glmFeeReceiver;

    address public USDC;
    address public WETH;

    uint256 public pendingExecutionAmount;
    uint256 internal constant DECIMAL_PRECISION = 1e30;

    Glm public glm;
    ManagementFeeInfo public managementFeeInfo;
    mapping(address => bool) public isGlmContract;

    uint256[50] __gaps;

    /*//////////////////////////////////////////////////////////////
                           MODIFERS
    //////////////////////////////////////////////////////////////*/
    modifier onlyGlmKeeper() {
        require(msg.sender == glmKeeper, "Only GlmKeeper can call this function");
        _;
    }
    modifier onlyGlmRouter() {
        require(msg.sender == glm.router, "Only GlmRouter can call this function");
        _;
    }
    modifier onlyGlm() {
        require(isGlmContract[msg.sender], "Only Glm Related Contracts can call this function");
        _;
    }
    modifier onlyGlmManager() {
        require(msg.sender == glm.manager, "Only GlmManager can call this function");
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            INIT FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _USDC, address _WETH) public initializer {
        USDC = _USDC;
        WETH = _WETH;
        __Ownable_init();
        __ERC4626_init(IERC20Upgradeable(_USDC));
        __ERC20_init("GlmVault", "GLM");
        __ReentrancyGuard_init();
    }

    /*//////////////////////////////////////////////////////////////
                      STRATEGY PARAMETERS SETTERS
    //////////////////////////////////////////////////////////////*/

    function setGlmAddresses(
        address _glmVault,
        address _glmRouter,
        address _glmManager,
        address _glmManagerCallback,
        address _glmRebalance,
        address _glmRebalanceCallback,
        address _glmPriceReader,
        address _glmFeeCalculator
    ) external onlyOwner {
        glm = Glm({
            vault: _glmVault,
            router: _glmRouter,
            manager: _glmManager,
            managerCallback: _glmManagerCallback,
            rebalance: _glmRebalance,
            rebalanceCallback: _glmRebalanceCallback,
            priceReader: _glmPriceReader,
            feeCalculator: _glmFeeCalculator
        });
        emit SetGlmAddresses(
            _glmVault,
            _glmRouter,
            _glmManager,
            _glmManagerCallback,
            _glmRebalance,
            _glmRebalanceCallback,
            _glmPriceReader,
            _glmFeeCalculator
        );
        addGlmContracts();
    }

    //function to add all the glm contracts to the mapping isGlmContracts
    function addGlmContracts() public onlyOwner {
        isGlmContract[glm.vault] = true;
        isGlmContract[glm.router] = true;
        isGlmContract[glm.manager] = true;
        isGlmContract[glm.managerCallback] = true;
        isGlmContract[glm.rebalance] = true;
        isGlmContract[glm.rebalanceCallback] = true;
    }

    //function to remove a glm contract from the mapping isGlmContracts
    function addRemoveGlmContract(address _contract, bool isAdd) external onlyOwner {
        isGlmContract[_contract] = isAdd;
        emit AddRemoveGlmContract(_contract, isAdd);
    }

    //function to set keeper and fee receiver
    function setGlmRoles(address _glmKeeper, address _glmFeeReceiver) external onlyOwner {
        glmKeeper = _glmKeeper;
        glmFeeReceiver = _glmFeeReceiver;
        emit SetGlmRoles(_glmKeeper, _glmFeeReceiver);
    }

    //function to set management fee info
    function setManagementFeeInfo(
        uint256 _managementFeeBpsFor1Year,
        uint256 _lastManagementFeeTimestamp,
        uint256 _managementFeeInterval
    ) external onlyOwner {
        managementFeeInfo = ManagementFeeInfo({
            managementFeeBpsFor1Year: _managementFeeBpsFor1Year,
            lastManagementFeeTimestamp: _lastManagementFeeTimestamp,
            managementFeeInterval: _managementFeeInterval
        });

        emit SetManagementFeeInfo(_managementFeeBpsFor1Year, _lastManagementFeeTimestamp, _managementFeeInterval);
    }

    /*//////////////////////////////////////////////////////////////
                       VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    function totalAssets() public view override(ERC4626Upgradeable) returns (uint256 amount) {
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 usdcPrice = IGlmPriceReader(glm.priceReader).getTokenPrice(USDC);
        uint256 poolLength = manager.getGmPoolLength();
        for (uint256 i; i < poolLength; i++) {
            address gmTokenAddress = manager.getGmTokenAddress(i);
            amount += getGmTokenValueInUsdc(gmTokenAddress, IERC20Upgradeable(gmTokenAddress).balanceOf(address(this)), usdcPrice);
        }
        amount += pendingExecutionAmount;
    }

    function getGmTokenValueInUsdc(address _gmToken, uint256 _amount, uint256 usdcPrice) public view returns (uint256) {
        uint256 gmTokenPrice = IGlmPriceReader(glm.priceReader).getMarketTokenPrice(_gmToken) / 1e18;
        return ((gmTokenPrice * _amount) * usdcPrice) / 1e30 / 1e18; //return 1e6
    }

    //function to check how much keeper can claim
    function keeperManagementFeePreview() public view returns (address gmToken, uint256 amount, uint256 timestamp) {
        ManagementFeeInfo memory info = managementFeeInfo;
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 timeElapsed = block.timestamp - info.lastManagementFeeTimestamp;

        require(timeElapsed >= info.managementFeeInterval, "Not enough time elapsed");
        uint256 usdcAmountFor1Year = (totalAssets() * info.managementFeeBpsFor1Year) / DECIMAL_PRECISION;

        uint256 usdcAmount = (usdcAmountFor1Year * info.managementFeeInterval) / (365 days);
        uint256 index = manager.getMostOverWeightedPool(totalAssets());
        gmToken = manager.getGmTokenAddress(index);
        amount = manager.getGmTokenAmountFromUsdc(gmToken, usdcAmount);

        return (gmToken, amount, block.timestamp);
    }

    function calculateSwapImpactFee(address inputGmToken, address outputGmToken, uint256 inputAmount) public view returns (uint256 feeBps) {
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 usdcValue = manager.getGmTokenValueInUsdc(inputGmToken, inputAmount);

        uint256 inputPoolId = manager.getPoolIdByMarketToken(inputGmToken);
        uint256 outputPoolId = manager.getPoolIdByMarketToken(outputGmToken);

        uint256 weightAfterDeposit = manager.getWeightAfterDepositForSwap(inputPoolId, usdcValue, totalAssets());

        uint256 weightAfterWithdrawal = manager.getWeightAfterWithdrawalForSwap(outputPoolId, usdcValue, totalAssets());

        uint256 inputGmTargetWeight = manager.getTargetWeight(inputPoolId);
        uint256 outputGmTargetWeight = manager.getTargetWeight(outputPoolId);

        if (weightAfterDeposit > inputGmTargetWeight) {
            feeBps += IGlmFeeCalculator(glm.feeCalculator).calculateAggressiveFee(weightAfterDeposit - inputGmTargetWeight);
        }
        if (weightAfterWithdrawal < outputGmTargetWeight) {
            feeBps += IGlmFeeCalculator(glm.feeCalculator).calculateAggressiveFee(outputGmTargetWeight - weightAfterWithdrawal);
        }
        //return will be in 1e30
        feeBps = feeBps * 1e10;
    }

    function getfeeInGm(
        address inputToken,
        address outputToken,
        uint256 inputTokenAmount,
        uint256 feeBps
    ) public view returns (uint256 outputGmAmount, uint256 feeInGm) {
        uint256 outputGmAmount = IGlmPriceReader(glm.priceReader).calculateTokenConverstion(inputToken, outputToken, inputTokenAmount);

        feeInGm = (outputGmAmount * feeBps) / DECIMAL_PRECISION;
    }

    /*//////////////////////////////////////////////////////////////
                            PROTOCOL FUNCTIONS 
    //////////////////////////////////////////////////////////////*/
    function gmTokenSwap(
        address inputGmToken,
        address outputGmToken,
        uint256 inputAmount
    ) external nonReentrant returns (uint256 feeBps, uint256 outputGmAmount) {
        IGlmRouter router = IGlmRouter(glm.router);
        require(router.checkIsPaused() == false, "GlmRouter is paused");
        require(inputGmToken != outputGmToken, "Input and output token cannot be the same");
        require(router.isPoolGmToken(inputGmToken) && router.isPoolGmToken(outputGmToken), "Input token is not a GmMarketToken in pool");
        require(inputAmount > 0, "Input amount must be greater than 0");
        require(isMaxSwapExceeded(inputGmToken, outputGmToken, inputAmount) == false, "Max swap amount exceeded");
        uint256 userInputGmAmount = inputAmount;
        IERC20Upgradeable(inputGmToken).safeTransferFrom(msg.sender, address(this), userInputGmAmount);
        feeBps = calculateSwapImpactFee(inputGmToken, outputGmToken, userInputGmAmount);

        uint256 feeInGm;
        if (feeBps > 0) {

            (outputGmAmount, feeInGm) = getfeeInGm(inputGmToken, outputGmToken, userInputGmAmount, feeBps);

            uint256 outputGmAmountAfterFee = outputGmAmount - feeInGm;

            IERC20Upgradeable(outputGmToken).safeTransfer(glmFeeReceiver, feeInGm);

            IERC20Upgradeable(outputGmToken).safeTransfer(msg.sender, outputGmAmountAfterFee);
        } else {

            outputGmAmount = IGlmPriceReader(glm.priceReader).calculateTokenConverstion(inputGmToken, outputGmToken, userInputGmAmount);
            
            IERC20Upgradeable(outputGmToken).safeTransfer(msg.sender, outputGmAmount);
        }

        emit GmTokenSwap(
            msg.sender,
            inputGmToken,
            outputGmToken,
            userInputGmAmount,
            outputGmAmount,
            IGlmPriceReader(glm.priceReader).getMarketTokenPrice(inputGmToken),
            IGlmPriceReader(glm.priceReader).getMarketTokenPrice(outputGmToken),
            feeInGm
        );
    }

    function isMaxSwapExceeded(address inputGmToken, address outputToken, uint256 inputAmount) public view returns (bool) {
        IGlmManager manager = IGlmManager(glm.manager);
        uint256 inputIndex = manager.getPoolIdByMarketToken(inputGmToken);
        uint256 outputIndex = manager.getPoolIdByMarketToken(outputToken);
        return inputAmount > manager.getMaxSwapAmountWithTA(inputIndex, outputIndex, totalAssets());
    }

    function keeperManagementFeeClaim() external onlyGlmKeeper returns (address gmToken, uint256 amount, uint256 timestamp) {
        (gmToken, amount, timestamp) = keeperManagementFeePreview();
        IERC20Upgradeable(gmToken).safeTransfer(glmFeeReceiver, amount);
        managementFeeInfo.lastManagementFeeTimestamp = timestamp;

        emit KeeperManagementFeeClaimed(gmToken, amount, timestamp);
    }

    /// @notice deposit usdc
    /// @param amount amount of usdc to be deposited
    /// @param to receiver of shares
    /// @return shares minted to receiver
    function deposit(uint256 amount, address to) public override(ERC4626Upgradeable) onlyGlm returns (uint256 shares) {
        if (totalSupply() != 0) {
            shares = previewDeposit(amount);
            _deposit(msg.sender, to, amount, shares);
            return shares;
        } else {
            shares = amount;
            _deposit(msg.sender, to, amount, shares);
            return shares;
        }
    }

    function finalizeWithdrawal(uint256 assets, uint256 glmAmount, address receiver) external onlyGlm returns (uint256 shares) {
        _burn(address(this), glmAmount);
        shares = glmAmount;
        emit Withdraw(glm.manager, receiver, receiver, assets, glmAmount);
        return shares;
    }

    //function that can only be called by glmManager and glmRouter
    function adjustPendingExecutionAmount(uint256 _amount, bool _isIncrease) external onlyGlm {
        if (_isIncrease) {
            pendingExecutionAmount += _amount;
        } else {
            if (pendingExecutionAmount < _amount) {
                pendingExecutionAmount = 0;
            } else {
                pendingExecutionAmount -= _amount;
            }
        }
        emit AdjustPendingExecutionAmount(_amount, _isIncrease);
    }

    function transferToGlmRouter(address _token, uint256 _amount) external onlyGlmRouter {
        IERC20Upgradeable(_token).safeTransfer(glm.router, _amount);
        emit TransferToGlmRouter(_token, _amount);
    }

    function transferGm(address _token, uint256 _amount, address _address) external onlyGlm {
        IERC20Upgradeable(_token).safeTransfer(_address, _amount);
        emit TransferGm(_token, _amount, _address);
    }

    /*//////////////////////////////////////////////////////////////
                       INTERNAL AND UNUSED FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override {
        _mint(receiver, shares);
        emit Deposit(caller, receiver, assets, shares);
    }

    //function that are not used
    function mint(uint256 shares, address to) public override(ERC4626Upgradeable) onlyGlm returns (uint256 amount) {
        revert("not implemented");
    }

    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) public override(ERC4626Upgradeable) onlyGlm returns (uint256 shares) {
        revert("not implemented");
    }

    function redeem(uint256 shares, address receiver, address owner) public override(ERC4626Upgradeable) onlyGlm returns (uint256 assets) {
        revert("not implemented");
    }

    receive() external payable {}
}
