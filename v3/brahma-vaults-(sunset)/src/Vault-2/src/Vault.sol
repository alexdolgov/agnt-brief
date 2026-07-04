// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";

import "./libraries/AddArrayLib.sol";

import "./interfaces/ITradeExecutor.sol";
import "./interfaces/IYieldExecutor.sol";
import "./interfaces/IVault.sol";

/// @title Polygains Vault (Brahma Vault)
/// @author 0xAd1 and Bapireddy
/// @notice Minimal vault contract to support trades across different protocols.
contract Vault is IVault, ERC20Permit, ReentrancyGuard {
    using AddrArrayLib for AddrArrayLib.Addresses;

    /*///////////////////////////////////////////////////////////////
                                 CONSTANTS
    //////////////////////////////////////////////////////////////*/
    /// @dev minimum balance used to check when executor is removed.
    uint256 public constant DUST_LIMIT = 10**18;
    /// @dev The max basis points used as normalizing factor.
    uint256 public constant MAX_BPS = 10000;

    /*///////////////////////////////////////////////////////////////
                                IMMUTABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice The underlying token the vault accepts.
    address public immutable override wantToken;

    uint8 private immutable tokenDecimals;

    /*///////////////////////////////////////////////////////////////
                            MUTABLE ACCESS MODFIERS
    //////////////////////////////////////////////////////////////*/

    /// @notice boolean for enabling emergency mode to halt new withdrawal/deposits into vault.
    bool public emergencyMode;

    // // @notice address of batcher used for batching user deposits/withdrawals.
    // address public batcher;
    /// @notice keeper address to move funds between executors.
    address public override keeper;
    /// @notice Governance address to add/remove  executors.
    address public override governance;
    address public pendingGovernance;

    /// @notice time check for harvest
    uint256 public harvestThreshold = 561600; // 6.5 days
    /// @notice timestamp of last harvest
    uint256 public lastHarvestedAt;

    /// @notice Creates a new Vault that accepts a specific underlying token.
    /// @param _wantToken The ERC20 compliant token the vault should accept.
    /// @param _name The name of the vault token.
    /// @param _symbol The symbol of the vault token.
    /// @param _keeper The address of the keeper to move funds between executors.
    /// @param _governance The address of the governance to perform governance functions.
    constructor(
        string memory _name,
        string memory _symbol,
        address _wantToken,
        address _keeper,
        address _governance,
        uint256 _maxDepositLimit
    ) payable ERC20(_name, _symbol) ERC20Permit(_name) {
        require(_wantToken != address(0), "ZERO_ADDRESS");
        require(_keeper != address(0), "ZERO_ADDRESS");
        require(_governance != address(0), "ZERO_ADDRESS");

        tokenDecimals = IERC20Metadata(_wantToken).decimals();
        wantToken = _wantToken;
        keeper = _keeper;
        governance = _governance;
        maxDepositLimit = _maxDepositLimit;

        require(msg.value >= 1e3, "INSUFFICIENT_MATIC");
        deposit(0, _governance);
    }

    function decimals() public view override returns (uint8) {
        return tokenDecimals;
    }

    /*///////////////////////////////////////////////////////////////
                       USER DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    event VaultDeposit(
        address indexed depositor,
        address indexed recipient,
        uint256 amountIn,
        uint256 shares
    );
    event VaultWithdraw(
        address indexed withdrawer,
        address indexed recipient,
        uint256 amountOut,
        uint256 shares
    );

    /// @notice max number of shares mintable in the vault
    uint256 public maxDepositLimit;

    /// @notice Initiates a deposit of want tokens to the vault.
    /// @param amountIn The amount of erc20 wmatic token to deposit.
    /// @param receiver The address to receive vault tokens.
    function deposit(uint256 amountIn, address receiver)
        public
        payable
        override
        nonReentrant
        returns (uint256 shares)
    {
        nonEmergencyMode();

        uint256 _totalVaultFunds = totalVaultFunds();

        if (amountIn > 0) {
            bool transferSuccess = IERC20(wantToken).transferFrom(
                msg.sender,
                address(this),
                amountIn
            );
            require(transferSuccess, "TRANSFER_NOT_SUCCESSFULL");
        }

        if (msg.value > 0) {
            uint256 oldBal = IERC20(wantToken).balanceOf(address(this));
            (bool success, ) = payable(wantToken).call{value: msg.value}("");
            require(success, "WRAP_UNSUCCESS");
            uint256 newBal = IERC20(wantToken).balanceOf(address(this));

            require(newBal - oldBal == msg.value, "WRAP_UNSUCCESSFULL");
            amountIn += msg.value;
        }

        require(amountIn > 0, "ZERO_AMOUNT");

        _checkReentrancyOnYieldExecutors();
        // calculate the shares based on the amount.
        // amount comprises of total funds in vault + last week's yield
        // added to disincentivize users from timing deposits and withdraws
        // before and after harvest

        shares = totalSupply() > 0
            ? (totalSupply() * amountIn) / (_totalVaultFunds + lastEpochYield)
            : amountIn;
        require(shares != 0, "ZERO_SHARES");

        _mint(receiver, shares);
        require(totalSupply() <= maxDepositLimit, "VAULT_CAP_REACHED");
        emit VaultDeposit(msg.sender, receiver, amountIn, shares);
    }

    /// @notice Initiates a withdrawal of vault tokens to the user.
    /// @param sharesIn The amount of vault tokens to withdraw.
    /// @param receiver The address to receive the vault tokens.
    function withdraw(uint256 sharesIn, address receiver)
        external
        override
        nonReentrant
        returns (uint256 amountOut)
    {
        nonEmergencyMode();
        _checkReentrancyOnYieldExecutors();
        require(sharesIn > 0, "ZERO_SHARES");
        // calculate proportional amount out based on funds in vault and executors
        amountOut =
            (sharesIn * IERC20(wantToken).balanceOf(address(this))) /
            totalSupply();

        // YieldExecutors always hold LP tokens only and never wantTokens

        uint256 totalYieldEx = totalYieldExecutors();
        for (uint256 i = 0; i < totalYieldEx; ++i) {
            IYieldExecutor exec = IYieldExecutor(yieldExecutorByIndex(i));
            uint256 lpOut = (sharesIn * exec.totalLPTokens()) / totalSupply();

            if (lpOut > 0) {
                uint256 wantTokenOut = _withdrawFromYieldExecutor(
                    address(exec),
                    lpOut
                );
                amountOut += wantTokenOut;
            }
        }
        amountOut -= (pendingFee * sharesIn) / totalSupply();

        // burn shares of msg.sender
        _burn(msg.sender, sharesIn);
        bool transferSuccess = false;
        /// charging exitPenalty
        if (exitPenalty > 0) {
            uint256 fee = (amountOut * exitPenalty) / MAX_BPS;
            amountOut = amountOut - fee;
        }

        transferSuccess = IERC20(wantToken).transfer(receiver, amountOut);
        require(transferSuccess, "TRANSFER_NOT_SUCCESSFULL");
        emit VaultWithdraw(msg.sender, receiver, amountOut, sharesIn);
    }

    /// @notice Called by keeper after each epoch to manage yeild and allocate capital
    /// @param _claimYieldData array of bytes used for claiming yield from YE list in order of aray
    /// @param _withdrawData bytes required to withdraw data from tradeExecutor
    /// @param _shouldPlaceTrade boolean indicating wether to send this epoch's yield to tradeExecutor or to compound it into the vault
    function harvest(
        bytes[] calldata _claimYieldData,
        bytes calldata _withdrawData,
        bool _shouldPlaceTrade
    ) external nonReentrant {
        onlyKeeper();

        require(
            block.timestamp - lastHarvestedAt >= harvestThreshold,
            "Last harvest within threshold"
        );

        lastHarvestedAt = block.timestamp;

        _checkReentrancyOnYieldExecutors();

        uint256 baseYield = 0;
        // Iterates over all yield executors and collects this epoch's yield
        uint256 totalYieldEx = totalYieldExecutors();
        for (uint256 i = 0; i < totalYieldEx; ++i) {
            IYieldExecutor exec = IYieldExecutor(yieldExecutorByIndex(i));
            baseYield += exec.claimYield(_claimYieldData[i]);
        }
        uint256 fee = 0;

        // Collects last epoch's trading yield
        uint256 boostedYield = tradeExecutor.initiateWithdraw(_withdrawData);

        // Setting this harvest yield as lastEpochYeild
        lastEpochYield = baseYield;

        uint256 currentSharePrice = (totalVaultFunds() * 1e18) / totalSupply();

        // Fees if new share price is more than last epoch's share price
        if (currentSharePrice > prevSharePrice) {
            fee =
                ((currentSharePrice - prevSharePrice) *
                    totalSupply() *
                    performanceFee) /
                (1e18 * MAX_BPS);
        }
        pendingFee += fee;
        prevSharePrice = currentSharePrice;

        if (_shouldPlaceTrade) {
            bool transferSuccess = IERC20(wantToken).transfer(
                address(tradeExecutor),
                lastEpochYield // all the harvested yield is transferred for the trade.
            );
            require(transferSuccess, "TRANSFER_NOT_SUCCESSFULL");
        }

        emit HarvestedYield(boostedYield, lastEpochYield);
    }

    /// @notice Calculates the total amount of underlying tokens the vault holds.
    /// @return The total amount of underlying tokens the vault holds.
    function totalVaultFunds() public view returns (uint256) {
        return
            IERC20(wantToken).balanceOf(address(this)) +
            totalYieldExecutorFunds() -
            pendingFee;
    }

    /*///////////////////////////////////////////////////////////////
                    EXECUTOR DEPOSIT/WITHDRAWAL LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @notice list of yield executors connected to vault.
    AddrArrayLib.Addresses private yieldExecutorsList;

    /// @notice trade executor for the vault.
    ITradeExecutor public tradeExecutor;

    /// @notice Emitted after the vault deposits into a executor contract.
    /// @param executor The executor that was deposited into.
    /// @param underlyingAmount The amount of underlying tokens that were deposited.
    event YieldExecutorDeposit(
        address indexed executor,
        uint256 underlyingAmount
    );

    /// @notice Emitted after the vault withdraws funds from a executor contract.
    /// @param executor The executor that was withdrawn from.
    /// @param underlyingAmount The amount of underlying tokens that were withdrawn.
    event YieldExecutorWithdrawal(
        address indexed executor,
        uint256 underlyingAmount
    );

    /// @notice Deposit given amount of want tokens into valid executor.
    /// @param _executor The executor to deposit into.
    /// @param _amount The amount of want tokens to deposit.
    /// @return lp token minted as lp by yieldExecutor
    function _depositIntoYieldExecutor(address _executor, uint256 _amount)
        internal
        returns (uint256 lp)
    {
        isActiveYieldExecutor(_executor);
        require(_amount > 0, "ZERO_AMOUNT");
        bool transferSuccess = IERC20(wantToken).transfer(_executor, _amount);
        require(transferSuccess, "TRANSFER_NOT_SUCCESSFULL");
        lp = IYieldExecutor(_executor).depositIntoProtocol(_amount);
        emit YieldExecutorDeposit(_executor, _amount);
    }

    /// @notice Withdraw given amount of want tokens into valid executor.
    /// @param _executor The executor to withdraw tokens from.
    /// @param _lpTokens The amount of lp tokens to withdraw.
    /// @return amountOut The amount of want tokens received
    function _withdrawFromYieldExecutor(address _executor, uint256 _lpTokens)
        internal
        returns (uint256 amountOut)
    {
        isActiveYieldExecutor(_executor);
        require(_lpTokens > 0, "ZERO_AMOUNT");
        uint256 prevBal = IERC20(wantToken).balanceOf(address(this));
        amountOut = IYieldExecutor(_executor).withdrawfromProtocol(_lpTokens);
        uint256 newBal = IERC20(wantToken).balanceOf(address(this));
        require(newBal - prevBal == amountOut, "UNSUCCESSFULL_WITHDRAW");
        emit YieldExecutorWithdrawal(_executor, amountOut);
    }

    /// @notice Wrapper function for internal withdraw exposed to keeper for manual management
    function depositIntoYieldExecutor(address _executor, uint256 _amount)
        external
        nonReentrant
        returns (uint256 lp)
    {
        onlyKeeper();
        lp = _depositIntoYieldExecutor(_executor, _amount);
    }

    /// @notice Wrapper function for internal withdraw exposed to keeper for manual management
    function withdrawFromYieldExecutor(address _executor, uint256 _lpTokens)
        external
        nonReentrant
        returns (uint256 amountOut)
    {
        onlyKeeper();
        amountOut = _withdrawFromYieldExecutor(_executor, _lpTokens);
    }

    /*///////////////////////////////////////////////////////////////
                           FEE CONFIGURATION
    //////////////////////////////////////////////////////////////*/

    /// @dev holds fees left for vault to claim
    uint256 public pendingFee;
    /// @dev share price during last harvest
    uint256 public prevSharePrice = type(uint256).max;
    /// @dev yield generated by YieldExecutor during last epoch
    uint256 public lastEpochYield;
    /// @dev Perfomance fee for the vault.
    uint256 public performanceFee;
    /// @notice Fee denominated in MAX_BPS charged during exit.
    uint256 public exitPenalty;

    /// @notice event emitted when fees are collected
    /// @param fees fees collected in last harvest cycle
    event FeesCollected(uint256 fees);

    /// @param boostedYield Boosted yield generated by trade executor
    /// @param lastEpochYield Yield generated by yield executors
    event HarvestedYield(uint256 boostedYield, uint256 lastEpochYield);

    /// @notice Emitted after perfomance fee updation.
    /// @param oldFee The old performance fee on vault.
    /// @param newFee The new performance fee on vault.
    event UpdatePerformanceFee(uint256 oldFee, uint256 newFee);

    /// @notice Updates the performance fee on the vault.
    /// @param _fee The new performance fee on the vault.
    /// @dev The new fee must be always less than 50% of yield.
    function setPerformanceFee(uint256 _fee) external {
        onlyGovernance();
        require(_fee < MAX_BPS / 2, "FEE_TOO_HIGH");
        emit UpdatePerformanceFee(performanceFee, _fee);
        performanceFee = _fee;
    }

    /// @notice Emitted after exit fee updation.
    /// @param oldFee The old exit fee on vault.
    /// @param newFee The new exit fee on vault.
    event UpdateExitPenalty(uint256 oldFee, uint256 newFee);

    /// @notice Function to set exit fee on the vault, can only be called by governance
    /// @param _fee Address of fee
    function setExitPenalty(uint256 _fee) external {
        onlyGovernance();
        require(_fee < MAX_BPS / 2, "EXIT_FEE_TOO_HIGH");
        emit UpdateExitPenalty(exitPenalty, _fee);
        exitPenalty = _fee;
    }

    function collectFee(uint256 feeAmount) external {
        onlyGovernance();
        pendingFee = pendingFee - feeAmount;
        // Send collected fee to governance
        bool transferSuccess = ERC20(wantToken).transfer(governance, feeAmount);
        require(transferSuccess, "TRANSFER_NOT_SUCCESSFULL");
        emit FeesCollected(feeAmount);
    }

    /*///////////////////////////////////////////////////////////////
                    EXECUTOR ADDITION/REMOVAL LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when tradeExec is changed
    /// @param oldExecutor The address of old trade executor.
    /// @param newExecutor The address of new trade executor.
    event TradeExecutorChanged(
        address indexed oldExecutor,
        address indexed newExecutor
    );

    /// @notice Emitted when executor is added to vault.
    /// @param executor The address of added executor.
    event YieldExecutorAdded(address indexed executor);

    /// @notice Emitted when executor is removed from vault.
    /// @param executor The address of removed executor.
    event YieldExecutorRemoved(address indexed executor);

    function setTradeExecutor(address _tradeExecutor) external {
        onlyGovernance();
        isValidAddress(_tradeExecutor);
        require(
            ITradeExecutor(_tradeExecutor).vault() == address(this),
            "INVALID_VAULT"
        );
        require(
            IERC20(wantToken).allowance(_tradeExecutor, address(this)) > 0,
            "NO_ALLOWANCE"
        );
        emit TradeExecutorChanged(address(tradeExecutor), _tradeExecutor);
        tradeExecutor = ITradeExecutor(_tradeExecutor);
    }

    /// @notice Adds a trade executor, enabling it to execute trades.
    /// @param _yieldExecutor The address of _yieldExecutor contract.
    function addYieldExecutor(address _yieldExecutor) external {
        onlyGovernance();
        isValidAddress(_yieldExecutor);
        require(
            IYieldExecutor(_yieldExecutor).vault() == address(this),
            "INVALID_VAULT"
        );
        require(
            IERC20(wantToken).allowance(_yieldExecutor, address(this)) > 0,
            "NO_ALLOWANCE"
        );
        yieldExecutorsList.pushAddress(_yieldExecutor);
        emit YieldExecutorAdded(_yieldExecutor);
    }

    /// @notice Adds a trade executor, enabling it to execute trades.
    /// @param _yieldExecutor The address of _yieldExecutor contract.
    /// @dev make sure all funds are withdrawn from executor before removing.
    function removeYieldExecutor(address _yieldExecutor) external {
        onlyGovernance();
        // check if executor attached to vault.
        isActiveYieldExecutor(_yieldExecutor);
        IYieldExecutor(_yieldExecutor).checkReentrancy();
        (uint256 executorFunds, uint256 blockUpdated) = IYieldExecutor(
            _yieldExecutor
        ).totalFunds();
        _areFundsUpdated(blockUpdated);
        require(executorFunds < DUST_LIMIT, "FUNDS_TOO_HIGH");
        yieldExecutorsList.removeAddress(_yieldExecutor);
        emit YieldExecutorRemoved(_yieldExecutor);
    }

    /// @notice gives the number of yield executors.
    /// @return The number of yield executors.
    function totalYieldExecutors() public view returns (uint256) {
        return yieldExecutorsList.size();
    }

    /// @notice Returns yield executor at given index.
    /// @return The executor address at given valid index.
    function yieldExecutorByIndex(uint256 _index)
        public
        view
        returns (address)
    {
        return yieldExecutorsList.getAddressAtIndex(_index);
    }

    /// @notice Calculates funds held by all executors in want token.
    /// @return Sum of all funds held by executors.
    function totalYieldExecutorFunds() public view returns (uint256) {
        uint256 totalFunds = 0;
        uint256 totalYieldEx = totalYieldExecutors();
        for (uint256 i = 0; i < totalYieldEx; ++i) {
            address executor = yieldExecutorByIndex(i);
            (uint256 executorFunds, uint256 blockUpdated) = IYieldExecutor(
                executor
            ).totalFunds();
            _areFundsUpdated(blockUpdated);
            totalFunds += executorFunds;
        }
        return totalFunds;
    }

    /// @dev This will call a read reentrancy check on yield executors which support it
    /// If a YE does not support reentrancy check, it will return nothing
    function _checkReentrancyOnYieldExecutors() internal {
        uint256 totalYieldEx = totalYieldExecutors();
        for (uint256 i = 0; i < totalYieldEx; ++i) {
            address executor = yieldExecutorByIndex(i);
            IYieldExecutor(executor).checkReentrancy();
        }
    }

    /*///////////////////////////////////////////////////////////////
                    GOVERNANCE ACTIONS
    //////////////////////////////////////////////////////////////*/

    event DepositCapUpdated(uint256 oldDepositCap, uint256 newDepositCap);

    /// @notice Nominates new governance address.
    /// @dev  Governance will only be changed if the new governance accepts it. It will be pending till then.
    /// @param _governance The address of new governance.
    function setGovernance(address _governance) external {
        onlyGovernance();
        pendingGovernance = _governance;
    }

    /// @notice Emitted when governance is updated.
    /// @param oldGovernance The address of the current governance.
    /// @param newGovernance The address of new governance.
    event UpdatedGovernance(
        address indexed oldGovernance,
        address indexed newGovernance
    );

    /// @notice The nomine of new governance address proposed by `setGovernance` function can accept the governance.
    /// @dev  This can only be called by address of pendingGovernance.
    function acceptGovernance() external {
        require(msg.sender == pendingGovernance, "INVALID_ADDRESS");
        emit UpdatedGovernance(governance, pendingGovernance);
        governance = pendingGovernance;
    }

    /// @notice Emitted when keeper is updated.
    /// @param oldKeeper The address of the old keeper.
    /// @param newKeeper The address of the new keeper.
    event UpdatedKeeper(address indexed oldKeeper, address indexed newKeeper);

    /// @notice Sets new keeper address.
    /// @dev  This can only be called by governance.
    /// @param _keeper The address of new keeper.
    function setKeeper(address _keeper) external {
        onlyGovernance();
        emit UpdatedKeeper(keeper, _keeper);
        keeper = _keeper;
    }

    /// @notice Emitted when emergencyMode status is updated.
    /// @param emergencyMode boolean indicating state of emergency.
    event EmergencyModeStatus(bool emergencyMode);

    /// @notice sets emergencyMode.
    /// @dev  This can only be called by governance.
    /// @param _emergencyMode if true, vault will be in emergency mode.
    function setEmergencyMode(bool _emergencyMode) external {
        onlyGovernance();
        emergencyMode = _emergencyMode;
        emit EmergencyModeStatus(_emergencyMode);
    }

    /// @notice sets deposit limit on vault
    /// @dev  This can only be called by governance.
    /// @param _maxDepositLimit max totalSupply of vault tokens
    function setDepositCapLimit(uint256 _maxDepositLimit) external {
        onlyGovernance();
        emit DepositCapUpdated(maxDepositLimit, _maxDepositLimit);
        maxDepositLimit = _maxDepositLimit;
    }

    /// @notice event emitted when harvest threshold is updated
    /// @return oldThreshold threshold before update
    /// @return newThreshold threshold after update
    event UpdatedHarvestThreshold(
        uint256 indexed oldThreshold,
        uint256 indexed newThreshol
    );

    /// @notice sets harvest threshold
    /// @param _newHarvestThreshold new harvest threshold to update
    function setHarvestThreshold(uint256 _newHarvestThreshold) external {
        onlyGovernance();

        emit UpdatedHarvestThreshold(harvestThreshold, _newHarvestThreshold);
        harvestThreshold = _newHarvestThreshold;
    }

    /// @notice Removes invalid tokens from the vault.
    /// @dev  This is used as fail safe to remove want tokens from the vault during emergency mode
    /// can be called by anyone to send funds to governance.
    /// @param _token The address of token to be removed.
    function sweep(address _token) public {
        isEmergencyMode();
        onlyGovernance();
        bool transferSuccess = IERC20(_token).transfer(
            governance,
            IERC20(_token).balanceOf(address(this))
        );
        require(transferSuccess, "TRANSFER_NOT_SUCCESSFULL");
    }

    /*///////////////////////////////////////////////////////////////
                    ACCESS MODIFERS
    //////////////////////////////////////////////////////////////*/
    /// @dev Checks if the sender is the governance.
    function onlyGovernance() internal view {
        require(msg.sender == governance, "ONLY_GOV");
    }

    /// @dev Checks if the sender is the keeper.
    function onlyKeeper() internal view {
        require(msg.sender == keeper, "ONLY_KEEPER");
    }

    /// @dev Checks if emergency mode is enabled.
    function isEmergencyMode() public view {
        require(emergencyMode, "EMERGENCY_MODE");
    }

    /// @dev Checks if emergency mode is enabled.
    function nonEmergencyMode() internal view {
        require(!emergencyMode, "EMERGENCY_MODE_ACTIVE");
    }

    /// @dev Checks if the address is valid.
    function isValidAddress(address _addr) internal pure {
        require(_addr != address(0), "NULL_ADDRESS");
    }

    /// @dev Checks if the yieldExecutor is valid.
    function isActiveYieldExecutor(address _yieldExecutor)
        public
        view
        override
    {
        require(yieldExecutorsList.exists(_yieldExecutor), "INVALID_EXECUTOR");
    }

    /// @dev Checks if funds are updated.
    function _areFundsUpdated(uint256 _blockUpdated) internal view {
        require(block.number == _blockUpdated, "FUNDS_NOT_UPDATED");
    }
}
