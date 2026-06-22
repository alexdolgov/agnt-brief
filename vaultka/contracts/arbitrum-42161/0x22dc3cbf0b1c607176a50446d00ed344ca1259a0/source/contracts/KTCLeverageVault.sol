// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "./interfaces/KLP/IRewardRouter.sol";
import "./interfaces/water/IWater.sol";
import "./interfaces/IKTCLeverageVault.sol";
import "./interfaces/IMasterChef.sol";
import "./interfaces/KLP/IVault.sol";
import "./interfaces/KLP/IKlpManager.sol";
import "./interfaces/IKlpRewardHandler.sol";
import "./interfaces/KLP/IVester.sol";

import "hardhat/console.sol";

contract KTCLeverageVault is
    IKTCLeverageVault,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    ERC20BurnableUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using MathUpgradeable for uint256;
    using MathUpgradeable for uint128;

    FeeConfiguration public feeConfiguration;
    StrategyAddresses public strategyAddresses;
    ContractParameters public contractParameters;

    mapping(address => UserInfo[]) public userInfo;
    mapping(address => bool) public allowedSenders;
    mapping(address => bool) public burner;
    mapping(address => bool) private isUser;
    mapping(address => uint256) public userTimelock;
    mapping(address => bool) private allowedClosers;
    mapping(address => bool) private isWhitelistedAsset;
    mapping(address => mapping(uint256 => bool)) public closePositionRequest;
    mapping(address => mapping(uint256 => uint256)) public closePositionAmount;

    address[] public allUsers;
    address public keeper;

    uint256[50] private __gaps;

    modifier InvalidID(uint256 positionId, address user) {
        require(positionId < userInfo[user].length, "KLP: positionID is not valid");
        _;
    }

    modifier zeroAddress(address addr) {
        require(addr != address(0), "Zero address");
        _;
    }

    modifier onlyBurner() {
        require(burner[msg.sender], "Not allowed to burn");
        _;
    }

    modifier onlyKeeper() {
        require(msg.sender == keeper, "Not keeper");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _usdc,
        address _water,
        address _rewardRouter,
        address _vault,
        address _rewardsVault
    ) external initializer {
        require(
            _usdc != address(0) && _water != address(0) && _rewardRouter != address(0) && _vault != address(0),
            "Zero address"
        );

        strategyAddresses.USDC = _usdc;
        strategyAddresses.water = _water;
        strategyAddresses.rewardRouter = _rewardRouter;
        strategyAddresses.Vault = _vault;
        strategyAddresses.rewardVault = _rewardsVault;
        strategyAddresses.klp = IRewardRouter(_rewardRouter).klp();
        strategyAddresses.stakedKlpTracker = IRewardRouter(_rewardRouter).stakedKlpTracker();
        strategyAddresses.feeKlpTracker = IRewardRouter(_rewardRouter).feeKlpTracker();
        strategyAddresses.klpManager = IRewardRouter(_rewardRouter).klpManager();
        strategyAddresses.WETH = IRewardRouter(_rewardRouter).weth();

        contractParameters.DENOMINATOR = 1_000;
        contractParameters.DECIMAL = 1e18;
        contractParameters.MAX_BPS = 100_000;
        contractParameters.MAX_LEVERAGE = 10_000;
        contractParameters.MIN_LEVERAGE = 2_000;

        __Ownable_init();
        __Pausable_init();
        __ERC20_init("KTC-POD", "KTCPOD");
    }

    /** ----------- Change onlyOwner functions ------------- */

    //MC or any other whitelisted contracts
    function setAllowed(address _sender, bool _allowed) public onlyOwner zeroAddress(_sender) {
        allowedSenders[_sender] = _allowed;
        emit SetAllowedSenders(_sender, _allowed);
    }

    function setAssetWhitelist(address _asset, bool _status) public onlyOwner {
        isWhitelistedAsset[_asset] = _status;
        emit SetAssetWhitelist(_asset, _status);
    }

    function setCloser(address _closer, bool _allowed) public onlyOwner zeroAddress(_closer) {
        allowedClosers[_closer] = _allowed;
        emit SetAllowedClosers(_closer, _allowed);
    }

    function setBurner(address _burner, bool _allowed) public onlyOwner zeroAddress(_burner) {
        burner[_burner] = _allowed;
        emit SetBurner(_burner, _allowed);
    }

    function setMaxAndMinLeverage(uint256 _maxLeverage, uint256 _minLeverage) public onlyOwner {
        require(_maxLeverage >= _minLeverage, "Max < Min");
        contractParameters.MAX_LEVERAGE = _maxLeverage;
        contractParameters.MIN_LEVERAGE = _minLeverage;
        emit UpdateMaxAndMinLeverage(_maxLeverage, _minLeverage);
    }

    function setProtocolFee(
        address _feeReceiver,
        uint256 _withdrawalFee,
        address _waterFeeReceiver,
        uint256 _liquidatorsRewardPercentage,
        uint256 _fixedFeeSplit,
        uint256 _mFeePercent,
        address _mFeeReceiver
    ) external onlyOwner zeroAddress(_feeReceiver) zeroAddress(_waterFeeReceiver) {
        require(_mFeePercent <= 10000, "Invalid");
        feeConfiguration.feeReceiver = _feeReceiver;
        feeConfiguration.withdrawalFee = _withdrawalFee;
        feeConfiguration.waterFeeReceiver = _waterFeeReceiver;
        feeConfiguration.liquidatorsRewardPercentage = _liquidatorsRewardPercentage;
        feeConfiguration.fixedFeeSplit = _fixedFeeSplit;
        feeConfiguration.mFeePercent = _mFeePercent;
        feeConfiguration.mFeeReceiver = _mFeeReceiver;

        emit ProtocolFeeChanged(
            _feeReceiver,
            _withdrawalFee,
            _waterFeeReceiver,
            _liquidatorsRewardPercentage,
            _fixedFeeSplit,
            _mFeePercent,
            _mFeeReceiver
        );
    }

    function setStrategyContracts(
        address _rewardRouter,
        address _vault,
        address _rewardVault,
        address _klpRewardHandler,
        address _water
    ) external onlyOwner zeroAddress(_rewardRouter) zeroAddress(_vault) zeroAddress(_rewardVault) {
        strategyAddresses.rewardRouter = _rewardRouter;
        strategyAddresses.Vault = _vault;
        strategyAddresses.rewardVault = _rewardVault;
        strategyAddresses.klp = IRewardRouter(_rewardRouter).klp();
        strategyAddresses.stakedKlpTracker = IRewardRouter(_rewardRouter).stakedKlpTracker();
        strategyAddresses.feeKlpTracker = IRewardRouter(_rewardRouter).feeKlpTracker();
        strategyAddresses.klpManager = IRewardRouter(_rewardRouter).klpManager();
        strategyAddresses.klpRewardHandler = _klpRewardHandler;
        strategyAddresses.water = _water;
        strategyAddresses.VesterContract = IRewardRouter(_rewardRouter).klpVester();

        emit RewardRouterContractChanged(_rewardRouter, _klpRewardHandler);
    }

    function setStrategyAddresses(address _masterChef, uint256 _mcPid, address _keeper) public onlyOwner {
        strategyAddresses.MasterChef = _masterChef;
        keeper = _keeper;
        contractParameters.MCPID = _mcPid;
    }

    function setLiquidationThreshold(uint256 _threshold) public onlyOwner {
        contractParameters.liquidationThreshold = _threshold;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function transferEsKTC(address _destination) external onlyOwner {
        IRewardRouter(strategyAddresses.rewardVault).signalTransfer(_destination);
    }

    /** ----------- View functions ------------- */

    function getKlpPrice(bool _maximise) public view returns (uint256) {
        uint256 price_In_Precision = IKlpManager(strategyAddresses.klpManager).getPrice(_maximise);
        // Klp is 18 decimals https://arbiscan.io/address/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258#readContract#F6
        // price precision is 30 decimals https://arbiscan.io/address/0x3963ffc9dff443c2a94f21b129d429891e32ec18#readContract#F4
        return (price_In_Precision * (10 ** 18)) / 10 ** 30;
    }

    function getAllUsers() public view returns (address[] memory) {
        return allUsers;
    }

    function getTotalNumbersOfOpenPositionBy(address _user) public view returns (uint256) {
        return userInfo[_user].length;
    }

    function getAggregatePosition(address _user) public view returns (uint256) {
        uint256 aggregatePosition;
        for (uint256 i = 0; i < userInfo[_user].length; i++) {
            UserInfo memory _userInfo = userInfo[_user][i];
            if (!_userInfo.liquidated) {
                aggregatePosition += userInfo[_user][i].position;
            }
        }
        return aggregatePosition;
    }

    function getUpdatedDebt(
        uint256 _positionID,
        address _user
    ) public view returns (uint256 currentDTV, uint256 currentPosition, uint256 currentDebt) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        if (_userInfo.closed || _userInfo.liquidated) return (0, 0, 0);

        uint256 previousValueInUSDC;
        // Get the current position and previous value in USDC using the `getCurrentPosition` function
        (currentPosition, previousValueInUSDC) = getCurrentPosition(_positionID, _userInfo.position, _user);
        uint256 leverage = _userInfo.leverageAmount;

        uint256 profitOrLoss;
        uint256 rewardSplitToWater;
        uint256 owedToWater;

        if (currentPosition > previousValueInUSDC) {
            profitOrLoss = currentPosition - previousValueInUSDC;
            // Call the `_getProfitSplit` function to calculate the reward split to water and the amount owed to water
            (rewardSplitToWater, , ) = _getProfitSplit(profitOrLoss, _userInfo.leverage);
            // The amount owed to water is the user's leverage amount plus the reward split to water
            owedToWater = leverage + rewardSplitToWater;
        } else {
            owedToWater = leverage;
        }
        // Calculate the current DTV by dividing the amount owed to water by the current position
        currentDTV = owedToWater.mulDiv(contractParameters.DECIMAL, currentPosition);
        // Return the current DTV, current position, and amount owed to water
        return (currentDTV, currentPosition, owedToWater);
    }

    function getCurrentPosition(
        uint256 _positionID,
        uint256 _shares,
        address _user
    ) public view returns (uint256 currentPosition, uint256 previousValueInUSDC) {
        UserInfo memory _userInfo = userInfo[_user][_positionID];
        uint256 userShares = (_shares == 0) ? _userInfo.position : _shares;
        uint256 userShareAfterFee = _removeVaultSwapFees(strategyAddresses.USDC, userShares);
        return (
            _convertKlpToUSDC(userShareAfterFee, getKlpPrice(true)),
            _convertKlpToUSDC(userShares, _userInfo.price)
        );
    }

    /** ----------- User functions ------------- */

    function handleAndCompoundRewards() public returns (uint256) {
        uint256 balanceBefore = IERC20Upgradeable(strategyAddresses.WETH).balanceOf(address(this));

        IRewardRouter(strategyAddresses.rewardVault).handleRewards(true, true, true, true, true, true, false);

        uint256 balanceAfter = IERC20Upgradeable(strategyAddresses.WETH).balanceOf(address(this));
        uint256 balanceDiff = balanceAfter - balanceBefore;
        address rewardToken = IRewardRouter(strategyAddresses.rewardVault).esKtx();
        if (balanceDiff > 0) {
            (uint256 toOwner, uint256 toWater, uint256 toKLPUsers) = IKlpRewardHandler(
                strategyAddresses.klpRewardHandler
            ).getKLPSplit(balanceDiff);
            IERC20Upgradeable(strategyAddresses.WETH).transfer(strategyAddresses.klpRewardHandler, balanceDiff);

            IKlpRewardHandler(strategyAddresses.klpRewardHandler).distributeKlp(toKLPUsers);
            IKlpRewardHandler(strategyAddresses.klpRewardHandler).distributeRewards(toOwner, toWater);
            if (IERC20Upgradeable(rewardToken).balanceOf(address(this)) > 0) {
                IERC20Upgradeable(rewardToken).transfer(
                    feeConfiguration.feeReceiver,
                    IERC20Upgradeable(rewardToken).balanceOf(address(this))
                );
            }
            emit ETHHarvested(toKLPUsers);
            return toKLPUsers;
        }

        return 0;
    }

    function openPosition(uint256 _amount, uint256 _leverage, address _inputAsset) external whenNotPaused nonReentrant {
        require(
            _leverage >= contractParameters.MIN_LEVERAGE && _leverage <= contractParameters.MAX_LEVERAGE,
            "KLP: Invalid leverage"
        );
        require(_amount > 0, "KLP: amount must be greater than zero");

        IKlpRewardHandler(strategyAddresses.klpRewardHandler).claimETHRewards(msg.sender);

        IERC20Upgradeable(_inputAsset).safeTransferFrom(msg.sender, address(this), _amount);

        // swap to USDC if input is not USDC and it not whitelisted on GMX
        if (_inputAsset != strategyAddresses.USDC) {
            require(isWhitelistedAsset[_inputAsset], "KLP: Invalid assets choosen");
        }
        // get leverage amount
        uint256 leveragedAmount = _amount.mulDiv(_leverage, contractParameters.DENOMINATOR) - _amount;
        bool status = IWater(strategyAddresses.water).lend(leveragedAmount);
        require(status, "Water: Lend failed");
        // add leverage amount to amount
        uint256 xAmount = _amount + leveragedAmount;

        IERC20Upgradeable(_inputAsset).safeIncreaseAllowance(strategyAddresses.klpManager, xAmount);
        uint256 KlpAmount = IRewardRouter(strategyAddresses.rewardRouter).mintAndStakeKlp(_inputAsset, xAmount, 0, 0);

        UserInfo memory _userInfo = UserInfo({
            user: msg.sender,
            deposit: _amount,
            leverage: _leverage,
            position: KlpAmount,
            price: getKlpPrice(true),
            liquidated: false,
            closedPositionValue: 0,
            liquidator: address(0),
            closePNL: 0,
            leverageAmount: leveragedAmount,
            positionId: userInfo[msg.sender].length,
            closed: false
        });

        //frontend helper to fetch all users and then their userInfo
        if (isUser[msg.sender] == false) {
            isUser[msg.sender] = true;
            allUsers.push(msg.sender);
        }

        userInfo[msg.sender].push(_userInfo);
        // mint gmx shares to user
        _mint(msg.sender, KlpAmount);

        IKlpRewardHandler(strategyAddresses.klpRewardHandler).setDebtRecordWETH(msg.sender);
        emit Deposit(
            msg.sender,
            _amount,
            userInfo[msg.sender].length - 1,
            _leverage,
            block.timestamp,
            KlpAmount,
            getKlpPrice(true)
        );
    }

    function closePosition(uint256 _positionID, address _user) external InvalidID(_positionID, _user) nonReentrant {
        // Retrieve user information for the given position
        UserInfo storage _userInfo = userInfo[_user][_positionID];
        // Validate that the position is not liquidated
        require(!_userInfo.liquidated, "KLP: position is liquidated");
        // Validate that the position has enough shares to close
        uint256 position = _userInfo.position;
        require(position > 0, "KLP: position is not enough to close");
        require(allowedClosers[msg.sender] || msg.sender == _userInfo.user, "KLP: not allowed to close position");

        IKlpRewardHandler(strategyAddresses.klpRewardHandler).claimETHRewards(_user);

        // check for liquidation
        (uint256 currentDTV, , ) = getUpdatedDebt(_positionID, _user);

        if (currentDTV >= (contractParameters.liquidationThreshold /* 95 * 1e17**/) / 10) {
            revert("Wait for liquidation");
        }

        CloseDataVars memory closeData;
        closeData.withdrawableShares = _userInfo.position;
        _handlePODToken(_user, position);
        uint256 returnedValue = _withdrawAndUnstakeKLP(position);

        // Struct to store intermediate data during calculation

        uint256 combinedDepositAndLeverage = _userInfo.deposit + _userInfo.leverageAmount;

        // compare returned value with leverage amount + deposit to get the profit
        if (returnedValue > combinedDepositAndLeverage) {
            closeData.profits = returnedValue - combinedDepositAndLeverage;
            (closeData.waterProfits, closeData.mFee, closeData.leverageUserProfits) = _getProfitSplit(
                closeData.profits,
                _userInfo.leverage
            );
        }

        if (returnedValue < _userInfo.leverageAmount + closeData.waterProfits) {
            _userInfo.liquidator = msg.sender;
            _userInfo.liquidated = true;
            closeData.waterRepayment = returnedValue;
        } else {
            // already added water profits to fulldebtValue
            closeData.waterRepayment = _userInfo.leverageAmount;
            // since we have water profits already added to fulldebtValue, we need to subtract it again from returnedValue
            closeData.toLeverageUser =
                (returnedValue - closeData.waterRepayment) -
                closeData.mFee -
                closeData.waterProfits;

            _mFeePayment(closeData.mFee, closeData.waterProfits);
            // set position to 0 when user is withdrawing in full to mitigate rounding errors
            _userInfo.closed = true;
        }

        IERC20Upgradeable(strategyAddresses.USDC).safeIncreaseAllowance(
            strategyAddresses.water,
            closeData.waterRepayment
        );
        closeData.success = IWater(strategyAddresses.water).repayDebt(
            _userInfo.leverageAmount,
            closeData.waterRepayment
        );
        _userInfo.position = 0;
        _userInfo.leverageAmount = 0;

        require(closeData.success, "Water: Repay failed");

        if (_userInfo.liquidated) {
            return;
        }

        // take protocol fee
        uint256 amountAfterFee;
        if (feeConfiguration.withdrawalFee > 0) {
            uint256 fee = closeData.toLeverageUser.mulDiv(feeConfiguration.withdrawalFee, contractParameters.MAX_BPS);
            IERC20Upgradeable(strategyAddresses.USDC).safeTransfer(feeConfiguration.feeReceiver, fee);
            amountAfterFee = closeData.toLeverageUser - fee;
        } else {
            amountAfterFee = closeData.toLeverageUser;
        }

        IERC20Upgradeable(strategyAddresses.USDC).safeTransfer(_user, amountAfterFee);

        _userInfo.closedPositionValue += returnedValue;
        _userInfo.closePNL += amountAfterFee;

        IKlpRewardHandler(strategyAddresses.klpRewardHandler).setDebtRecordWETH(_user);
        emit Withdraw(
            _user,
            amountAfterFee,
            _positionID,
            _userInfo.leverage,
            block.timestamp,
            closeData.withdrawableShares,
            closeData.leverageUserProfits,
            getKlpPrice(true)
        );
    }

    function liquidatePosition(uint256 _positionId, address _user) external nonReentrant {
        UserInfo storage _userInfo = userInfo[_user][_positionId];
        require(!_userInfo.liquidated, "KLP: Already liquidated");
        require(_userInfo.user != address(0), "KLP: liquidation request does not exist");
        (uint256 currentDTV, , ) = getUpdatedDebt(_positionId, _user);
        require(currentDTV >= (95 * 1e17) / 10, "Liquidation Threshold Has Not Reached");

        IKlpRewardHandler(strategyAddresses.klpRewardHandler).claimETHRewards(_user);

        uint256 position = _userInfo.position;

        _handlePODToken(_user, position);

        uint256 outputAmount = _withdrawAndUnstakeKLP(_userInfo.position);

        _userInfo.liquidator = msg.sender;
        _userInfo.liquidated = true;
        _userInfo.position = 0;

        uint256 liquidatorReward = outputAmount.mulDiv(
            feeConfiguration.liquidatorsRewardPercentage,
            contractParameters.MAX_BPS
        );
        uint256 amountAfterLiquidatorReward = outputAmount - liquidatorReward;

        IERC20Upgradeable(strategyAddresses.USDC).safeIncreaseAllowance(
            strategyAddresses.water,
            amountAfterLiquidatorReward
        );
        IWater(strategyAddresses.water).repayDebt(_userInfo.leverageAmount, amountAfterLiquidatorReward);
        IERC20Upgradeable(strategyAddresses.USDC).safeTransfer(msg.sender, liquidatorReward);

        IKlpRewardHandler(strategyAddresses.klpRewardHandler).setDebtRecordWETH(_user);

        emit Liquidated(_user, _positionId, msg.sender, outputAmount, liquidatorReward);
    }

    /** ----------- Token functions ------------- */

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        address spender = _msgSender();
        require(allowedSenders[from] || allowedSenders[to] || allowedSenders[spender], "ERC20: transfer not allowed");
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address ownerOf = _msgSender();
        require(allowedSenders[ownerOf] || allowedSenders[to], "ERC20: transfer not allowed");
        _transfer(ownerOf, to, amount);
        return true;
    }

    function burn(uint256 amount) public virtual override onlyBurner {
        _burn(_msgSender(), amount);
    }

    /** ----------- Internal functions ------------- */

    function _mFeePayment(uint256 _mFee, uint256 _waterFee) internal {
        if (_mFee > 0) {
            IERC20Upgradeable(strategyAddresses.USDC).safeTransfer(feeConfiguration.mFeeReceiver, _mFee);
        }
        if (_waterFee > 0) {
            IERC20Upgradeable(strategyAddresses.USDC).safeTransfer(feeConfiguration.waterFeeReceiver, _waterFee);
        }
    }

    function _getProfitSplit(uint256 _profit, uint256 _leverage) internal view returns (uint256, uint256, uint256) {
        if (_profit == 0) {
            return (0, 0, 0);
        }
        uint256 split = (feeConfiguration.fixedFeeSplit * _leverage + (feeConfiguration.fixedFeeSplit * 10000)) / 100;
        uint256 toWater = (_profit * split) / 10000;
        uint256 mFee = (_profit * feeConfiguration.mFeePercent) / 10000;
        uint256 toKLPUser = _profit - (toWater + mFee);

        return (toWater, mFee, toKLPUser);
    }

    function _getProfitState(uint256 _positionId, address _user) internal view returns (uint256 profit) {
        (uint256 currentValues, uint256 previousValue) = getCurrentPosition(_positionId, 0, _user);
        if (currentValues > previousValue) {
            profit = currentValues - previousValue;
        }
    }

    function _removeVaultSwapFees(address _token, uint256 _usdgAMount) internal view returns (uint256) {
        // ref: https://arbiscan.io/address/0x489ee077994b6658eafa855c308275ead8097c4a#readContract#F22
        uint256 getVaultFeeBasisPoints = IVault(strategyAddresses.Vault).getFeeBasisPoints(
            _token,
            _usdgAMount,
            IVault(strategyAddresses.Vault).mintBurnFeeBasisPoints(),
            IVault(strategyAddresses.Vault).taxBasisPoints(),
            false
        );
        // ref: https://arbiscan.io/address/0x489ee077994b6658eafa855c308275ead8097c4a#readContract#F35
        uint256 getVaultRedemptionAmount = IVault(strategyAddresses.Vault).getRedemptionAmount(_token, _usdgAMount);

        // uint256 public constant BASIS_POINTS_DIVISOR = 10_000;
        // @note base point is a constant variable with value 10_000
        // fee from vault is calculatted based on the below
        // _amount.mul(BASIS_POINTS_DIVISOR.sub(_feeBasisPoints)).div(BASIS_POINTS_DIVISOR);
        // _amount = vault redemption amount
        // _feeBasisPoints = vault fee basis points
        return getVaultRedemptionAmount.mulDiv(10_000 - getVaultFeeBasisPoints, 10_000);
    }

    function _convertKlpToUSDC(uint256 _amount, uint256 _KlpPrice) internal pure returns (uint256) {
        return _amount.mulDiv(_KlpPrice, 10 ** 18);
    }

    function _convertUSDCToKlp(uint256 _amount, uint256 _KlpPrice) internal pure returns (uint256) {
        return _amount.mulDiv(10 ** 18, _KlpPrice);
    }

    function _withdrawAndUnstakeKLP(uint256 _shares) internal returns (uint256) {
        IERC20Upgradeable(strategyAddresses.stakedKlpTracker).safeIncreaseAllowance(
            strategyAddresses.rewardRouter,
            _shares
        );

        uint256 tokenOut = IRewardRouter(strategyAddresses.rewardRouter).unstakeAndRedeemKlp(
            strategyAddresses.USDC,
            _shares,
            0,
            address(this)
        );
        return tokenOut;
    }

    function _handlePODToken(address _user, uint256 position) internal {
        if (strategyAddresses.MasterChef != address(0)) {
            uint256 userBalance = balanceOf(_user);
            if (userBalance >= position) {
                _burn(_user, position);
            } else {
                _burn(_user, userBalance);
                (uint256 depositAmount, , ) = IMasterChef(strategyAddresses.MasterChef).userInfo(
                    contractParameters.MCPID,
                    _user
                );
                if (depositAmount > 0) {
                    uint256 remainingPosition = position - userBalance;
                    IMasterChef(strategyAddresses.MasterChef).unstakeAndLiquidate(
                        contractParameters.MCPID,
                        _user,
                        remainingPosition
                    );
                }
            }
        } else {
            _burn(_user, position);
        }
    }
}
