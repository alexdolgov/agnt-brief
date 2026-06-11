/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import '@itb/quant-common/contracts/solidity8/ITBContract.sol';
import './interfaces/IStrategyManager.sol';
import './interfaces/ILiquidStaking.sol';
import './interfaces/IDelegation.sol';

/// @title PositionManager for EigenLayer
/// @author IntoTheBlock Corp
contract PositionManager is ITBContract {
    struct PositionConfig {
        address liquid_staking;
        address underlying;
        address delegate_to;
    }

    struct QueuedWithdrawal {
        uint withdrawal_block;
        address[] tokens;
        IDelegation.Withdrawal withdrawal;
    }

    event Deposit(address indexed caller, address token, uint amount, uint lpt_change);
    event StartWithdrawal(address indexed caller, address token, uint withdrawal_nonce, uint withdrawal_index, uint start_block, uint withdrawal_block, uint lpt_amount);
    event Withdraw(address indexed caller, address token, uint withdrawal_nonce, uint withdrawal_index, uint amount, uint lpt_change);

    event Assemble(address indexed caller, address[] tokens, uint[] amounts, uint lpt_change);
    event Disassemble(address indexed caller, address[] tokens, uint[] amounts, uint lpt_change);
    event UpdateStrategyManager(address indexed caller, address strategy_manager);
    event UpdateDelegationManager(address indexed caller, address delegation_manager);
    event UpdatePositionConfig(address indexed caller, address liquid_staking, address underlying, address delegate_to);

    PositionConfig public positionConfig;
    
    IStrategyManager public strategyManager;
    IDelegation public delegationManager;

    mapping(uint => QueuedWithdrawal) public withdrawalQueue;
    uint public cumulativeWithdrawalsQueued;
    uint public indexNextWithdrawal;

    function VERSION() external pure returns (string memory) {
        return "1.0.0";
    }

    constructor(address[] memory _executors, address payable _wnative, address _strategy_manager, address _delegation_manager, address _liquid_staking, address _underlying, address _delegate_to) ITBContract(_executors, _wnative) {
        updateStrategyManager(_strategy_manager);
        updateDelegationManager(_delegation_manager);
        updatePositionConfig(_liquid_staking, _underlying, _delegate_to);
        if (_delegate_to != address(0))
            delegate();
    }

    function updateStrategyManager(address _strategy_manager) public onlyOwner {
        strategyManager = IStrategyManager(_strategy_manager);
        emit UpdateStrategyManager(msg.sender, _strategy_manager);
    }

    function updateDelegationManager(address _delegation_manager) public onlyOwner {
        delegationManager = IDelegation(_delegation_manager);
        emit UpdateDelegationManager(msg.sender, _delegation_manager);
    }

    function updatePositionConfig(address _liquid_staking, address _underlying, address _delegate_to) public onlyOwner {
        positionConfig = PositionConfig(
            _liquid_staking,
            _underlying,
            _delegate_to
        );
        emit UpdatePositionConfig(msg.sender, _liquid_staking, _underlying, _delegate_to);
    }

    modifier hasConfig() {
        require(positionConfig.liquid_staking != address(0), 'A3'); // position_config is missing
        _;
    }

    function _percentageAmount(uint _amount, uint _percentage) internal pure returns (uint) {
        return _amount * _percentage / 1e18;
    }

    function getWithdrawalDelay() public view returns (uint) {
        address[] memory strategies = new address[](1);
        strategies[0] = positionConfig.liquid_staking;
        return delegationManager.getWithdrawalDelay(strategies);
    }

    function getPositionAssets() public view returns (address[] memory) {
        address[] memory assets = new address[](1);
        assets[0] = positionConfig.underlying;
        return assets;
    }

    function getUnderlyings() external view returns (address[] memory assets, uint[] memory amounts) {
        address[] memory tokens = getPositionAssets();
        uint[] memory balances = new uint[](tokens.length);
        balances[0] = ILiquidStaking(positionConfig.liquid_staking).sharesToUnderlying(getTotalLPT());
        return (tokens, balances);
    }

    function getLPTStaked() public view returns (uint) {
        return ILiquidStaking(positionConfig.liquid_staking).shares(address(this));
    }

    function lptPendingOfWithdraw() public view returns (uint amount_pending) { 
        for (uint i = indexNextWithdrawal; i < cumulativeWithdrawalsQueued; i++)
            amount_pending += withdrawalQueue[i].withdrawal.shares[0];
    }

    function getTotalLPT() public view returns (uint) {
        return getLPTStaked() + lptPendingOfWithdraw();
    }

    function haveWithdrawalsQueued() public view returns (bool) {
        return cumulativeWithdrawalsQueued > indexNextWithdrawal;
    }

    function withdrawalIsPending(uint _withdrawal_index) public view returns (bool) {
        bytes32 root = delegationManager.calculateWithdrawalRoot(withdrawalQueue[_withdrawal_index].withdrawal);
        return delegationManager.pendingWithdrawals(root);
    }

    function withdrawalIsReady(uint _withdrawal_index) public view returns (bool) {
        QueuedWithdrawal memory w = withdrawalQueue[_withdrawal_index];
        return withdrawalIsPending(_withdrawal_index) && block.number >= w.withdrawal_block;
    }

    function nextWithdrawalIsReady() public view returns (bool) {
        return withdrawalIsReady(indexNextWithdrawal);
    }

    function canCompleteWithdrawals() public view returns (bool) {
        return haveWithdrawalsQueued() && nextWithdrawalIsReady();
    }

    function delegate() public onlyExecutor hasConfig {
        _delegate(new bytes(0), 0, bytes32(0));
    }

    function delegateWithSignature(bytes memory _signature, uint _expiry, bytes32 _salt) public onlyOwner hasConfig {
        _delegate(_signature, _expiry, _salt);
    }

    function _delegate(bytes memory _signature, uint _expiry, bytes32 _salt) internal {
        if (delegationManager.delegatedTo(address(this)) != address(0))
            undelegate();
        delegationManager.delegateTo(positionConfig.delegate_to, IDelegation.SignatureWithExpiry(_signature, _expiry), _salt);
    }

    function _undelegate() internal { 
        delegationManager.undelegate(address(this));
    }

    // @dev In case owner wants to undelegate without waiting for withdrawals
    function undelegateUnsafe() external onlyOwner {
        _undelegate();
    }

    function undelegate() public onlyExecutor hasConfig {
        uint lpt = getTotalLPT();
        require(lpt == 0, 'D1');
        _undelegate();
    }

    function deposit(uint _amount, uint _min_lpt_out) public onlyExecutor hasConfig returns (uint lpt_out) {
        PositionConfig memory c = positionConfig;

        lpt_out = strategyManager.depositIntoStrategy(c.liquid_staking, c.underlying, _amount);
        require(lpt_out >= _min_lpt_out);

        emit Deposit(msg.sender, c.underlying, _amount, lpt_out);
    }
    
    function _queueWithdrawals(IDelegation.QueuedWithdrawalParams[] memory _withdrawal_params) internal {
        delegationManager.queueWithdrawals(_withdrawal_params);
    }

    function queueWithdrawals(IDelegation.QueuedWithdrawalParams[] memory _withdrawal_params) external onlyOwner {
        _queueWithdrawals(_withdrawal_params);
    }

    function startWithdrawal(uint _shares_amount) public onlyExecutor hasConfig {
        PositionConfig memory c = positionConfig;
        uint nonce = delegationManager.cumulativeWithdrawalsQueued(address(this));
        uint withdrawal_block = block.number + getWithdrawalDelay();
        uint withdrawal_index = cumulativeWithdrawalsQueued;

        {
            address[] memory strategies = new address[](1);
            strategies[0] = c.liquid_staking;
            uint[] memory shares = new uint[](1);
            shares[0] = _shares_amount;
            address[] memory tokens = new address[](1);
            tokens[0] = c.underlying;
            IDelegation.Withdrawal memory withdrawal = IDelegation.Withdrawal({
                staker: address(this),
                delegatedTo: delegationManager.delegatedTo(address(this)),
                withdrawer: address(this),
                nonce: nonce,
                startBlock: uint32(block.number),
                strategies: strategies,
                shares: shares
            });
            withdrawalQueue[withdrawal_index] = QueuedWithdrawal({
                withdrawal_block: withdrawal_block,
                tokens: tokens,
                withdrawal: withdrawal
            });
            
            IDelegation.QueuedWithdrawalParams[] memory queuedWithdrawalParams = new IDelegation.QueuedWithdrawalParams[](1);
            queuedWithdrawalParams[0] = IDelegation.QueuedWithdrawalParams({
                strategies: strategies,
                shares: shares,
                withdrawer: address(this)
            });

            _queueWithdrawals(queuedWithdrawalParams);

            cumulativeWithdrawalsQueued++;
        }

        emit StartWithdrawal(msg.sender, c.underlying, nonce, withdrawal_index, block.number, withdrawal_block, _shares_amount);
    }

    function _completeQueuedWithdrawal(IDelegation.Withdrawal memory _withdrawal, address[] memory _tokens, uint _middleware_times_index, bool _receive_as_tokens) internal {
        delegationManager.completeQueuedWithdrawal(_withdrawal, _tokens, _middleware_times_index, _receive_as_tokens);
    }

    function completeQueuedWithdrawal(IDelegation.Withdrawal memory _withdrawal, address[] memory _tokens, uint _middleware_times_index, bool _receive_as_tokens) external onlyOwner {
        _completeQueuedWithdrawal(_withdrawal, _tokens, _middleware_times_index, _receive_as_tokens);
    }

    /// @dev Should not be used under normal circumstances, will break withdrawal index flow
    function completeWithdrawal(uint _withdrawal_index, uint _min_out) public onlyExecutor hasConfig returns (uint lpt_burnt, uint coin_out) {
        require(withdrawalIsReady(_withdrawal_index), 'W2');

        QueuedWithdrawal memory w = withdrawalQueue[_withdrawal_index];
        address underlying = w.tokens[0];
        uint underlying_before = _balance(underlying);
        
        _completeQueuedWithdrawal(w.withdrawal, w.tokens, 0, true);
        
        lpt_burnt = w.withdrawal.shares[0];
        coin_out = _balance(underlying) - underlying_before;
        require(coin_out >= _min_out, 'W3');

        emit Withdraw(msg.sender, underlying, w.withdrawal.nonce, _withdrawal_index, coin_out, lpt_burnt);
    }

    function completeNextWithdrawal(uint _min_out) public onlyExecutor hasConfig returns (uint lpt_burnt, uint coin_out) {
        (lpt_burnt, coin_out) = completeWithdrawal(indexNextWithdrawal, _min_out);
        indexNextWithdrawal++;
    }

    function completeNextWithdrawals(uint _min_out) public onlyExecutor hasConfig returns (uint total_lpt_burnt, uint total_coin_out) {
        while (canCompleteWithdrawals()) {
            (uint lpt_burnt, uint coin_out) = completeNextWithdrawal(0);
            total_lpt_burnt += lpt_burnt;
            total_coin_out += coin_out;
        }
        require(total_coin_out >= _min_out, 'W4');
    }

    /// @dev Should not be used under normal circumstances
    function overrideWithdrawalIndexes(uint _cumulativeWithdrawalsQueued, uint _indexNextWithdrawal) external onlyExecutor {
        cumulativeWithdrawalsQueued = _cumulativeWithdrawalsQueued;
        indexNextWithdrawal = _indexNextWithdrawal;
    }

    function assemble(uint _min_lpt_out) public onlyExecutor hasConfig returns (uint lpt_out) {
        PositionConfig memory c = positionConfig;
        uint underlying_amount = _balance(c.underlying);

        lpt_out = deposit(underlying_amount, _min_lpt_out);

        address[] memory tokens = getPositionAssets();
        uint[] memory underlyings_change = new uint[](tokens.length);
        underlyings_change[0] = underlying_amount - _balance(c.underlying);

        emit Assemble(msg.sender, tokens, underlyings_change, lpt_out);
    }

    function disassemble(uint _percentage, uint _min_coin_out) public onlyExecutor hasConfig returns (uint coin_out) {
        require(_percentage <= 1e18, 'P1');
        uint lpt_burnt;
        
        if (_percentage > 0) {
            uint lpt_amount = _percentageAmount(getLPTStaked(), _percentage);
            if (lpt_amount > 0)
                startWithdrawal(lpt_amount);
        }
        (lpt_burnt, coin_out) = completeNextWithdrawals(_min_coin_out);
        
        address[] memory tokens = getPositionAssets();
        uint[] memory underlyings_change = new uint[](tokens.length);
        underlyings_change[0] = coin_out;
        emit Disassemble(msg.sender, tokens, underlyings_change, lpt_burnt);
    }

    function fullDisassemble(uint _min_coin_out) public onlyExecutor hasConfig returns (uint) {
        return disassemble(1e18, _min_coin_out);
    }
}