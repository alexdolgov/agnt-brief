// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "src/modules/Version.sol";
import "src/modules/Dao.sol";
import "src/modules/WithdrawalRequest.sol";
import "src/modules/Rate.sol";
import "src/modules/Validator.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import "src/interfaces/ILsdETH.sol";
import {Errors} from "src/libraries/Errors.sol";
import "src/interfaces/IBasePool.sol";

/**
 * @title Provide basic functions of liquidity staking
 * @author NodeDAO
 * @notice Provides
 * - stakeETH
 * - unstakeETH
 * - requestWithdrawals
 * - claimWithdrawals
 * - convertToShares
 * - convertToAssets
 * - exchangeRate
 * - setting: setValidatorManager & setRateManager & setWithdrawalDelayBlocks & pause & unpause
 */
abstract contract BasePool is Initializable, Version, Rate, Validator, WithdrawalRequest, Dao, IBasePool {
    /// Liquidity token, erc20 contract address
    ILsdETH public poolToken;
    bool public unstakeAllowed;

    // Staking strategy vault and total funds entering the strategy
    address public strategyVault;
    uint256 public strategyAmount;

    function __BasePool_init(
        address _ownerAddr,
        uint256 _withdrawalDelayBlocks,
        uint256 _apr,
        uint256 _totalUnderlyingAsset,
        address _dao,
        address _poolToken,
        address _rateManager,
        address _validatorManager,
        address _depositContract,
        bool _unstakeAllowed
    ) public onlyInitializing {
        __Version_init(_ownerAddr);
        __Dao_init(_dao);
        __Rate_init(_apr, _rateManager, _totalUnderlyingAsset);
        __Validator_init(_validatorManager, address(0), _depositContract);
        __WithdrawalRequest_init(_withdrawalDelayBlocks);

        poolToken = ILsdETH(_poolToken);
        if (_unstakeAllowed) {
            unstakeAllowed = _unstakeAllowed;
        }
    }

    /**
     * @notice Receive eth, mint lsdETH according to the exchange rate
     * @notice Allows the function to be rewritten to add functionality, such as adding a whitelist mechanism
     */
    function stakeETH() external payable virtual {
        _stakeETH();
    }

    function _stakeETH() internal whenNotPaused {
        uint256 _stakeAmount = msg.value;
        address _staker = msg.sender;

        if (_stakeAmount < 0.01 ether) {
            revert Errors.InvalidAmount();
        }

        // Calculate the amount of lsdETH minted based on the exchange rate
        uint256 _mintAmount = _convertToShares(_stakeAmount, poolToken.totalSupply());
        _increaseAssets(_stakeAmount);
        poolToken.whiteListMint(_mintAmount, _staker);

        emit EthStake(_staker, _stakeAmount, _mintAmount);
    }

    /**
     * @notice Burn lsdETH and redeem ETH according to the exchange rate
     * @notice Available redemption funds include:
     * current pool funds + funds that can be aggregated (including execution layer rewards and consensus layer rewards)
     */
    function unstakeETH(uint256 _unstakeAmount) external nonReentrant whenNotPaused {
        if (!unstakeAllowed) {
            revert Errors.UnstakeNotEnabled();
        }

        address _sender = msg.sender;

        uint256 _ethAmount = _convertToAssets(_unstakeAmount, poolToken.totalSupply());
        _checkFunds(_ethAmount, true);

        _reduceAssets(_ethAmount);
        poolToken.whiteListBurn(_unstakeAmount, _sender);

        (bool success,) = _sender.call{value: _ethAmount}("");
        if (!success) revert Errors.TransferFailed();

        emit EthUnstake(_sender, _unstakeAmount, _ethAmount);
    }

    /**
     * @notice Create withdrawal request
     * @param _unstakeAmount unstake lsdETH amount
     */
    function requestWithdrawals(uint256 _unstakeAmount) external whenNotPaused {
        if (!unstakeAllowed) {
            revert Errors.UnstakeNotEnabled();
        }

        uint256 _totalSupply = poolToken.totalSupply();
        uint256 _ethAmount = _convertToAssets(_unstakeAmount, _totalSupply);
        if (address(this).balance >= _ethAmount) {
            revert Errors.CanUnstakeETH();
        }

        address _sender = msg.sender;
        _reduceAssets(_ethAmount);
        poolToken.whiteListBurn(_unstakeAmount, _sender);

        _requestWithdrawals(_sender, _unstakeAmount, _exchangeRate(_totalSupply), _ethAmount);
    }

    /**
     * @notice Claim withdrawal
     * @param _receiver fund recipient
     * @param _requestIds withdrawal request ids
     */
    function claimWithdrawals(address _receiver, uint256[] memory _requestIds) external nonReentrant whenNotPaused {
        uint256 _totalEthAmount = 0;
        for (uint256 i = 0; i < _requestIds.length; ++i) {
            uint256 _requestId = _requestIds[i];
            if (!canClaimWithdrawal(_receiver, _requestId)) {
                revert Errors.WithrawalsRequestCannotClaimed();
            }

            WithdrawalInfo memory _withdrawal = _getWithdrawal(_receiver, _requestId);

            _claimWithdrawals(_receiver, _requestId);

            _totalEthAmount += _withdrawal.claimAmount;
        }

        _checkFunds(_totalEthAmount, false);
        (bool success,) = _receiver.call{value: _totalEthAmount}("");
        if (!success) revert Errors.TransferFailed();
    }

    /**
     * @notice ETH to lsdETH exchange rate
     * @param _stakeAmount stake amount
     */
    function convertToShares(uint256 _stakeAmount) external view returns (uint256) {
        return _convertToShares(_stakeAmount, poolToken.totalSupply());
    }

    /**
     * @notice lsdETH to ETH exchange rate
     * @param _unstakeAmount unstake lsdETH amount
     */
    function convertToAssets(uint256 _unstakeAmount) external view returns (uint256) {
        return _convertToAssets(_unstakeAmount, poolToken.totalSupply());
    }

    /**
     * @notice lsdETH to ETH exchange rate
     */
    function exchangeRate() external view returns (uint256) {
        return _exchangeRate(poolToken.totalSupply());
    }

    /**
     * @notice Receive Rewards
     * compatibility with 1.0 ConsensusVault.sol
     */
    function receiveRewards(uint256) external payable {
        emit Received(msg.sender, msg.value);
    }

    /**
     * @notice Allows DAO to set up strategic funds to achieve flexible pledge strategies
     */
    function setStrategyVault(address _strategyVault) public onlyDao {
        if (_strategyVault == address(0)) {
            revert Errors.InvalidAddr();
        }

        emit StrategyVaultChanged(strategyVault, _strategyVault);

        strategyVault = _strategyVault;
    }

    /**
     * @notice DAO deposit funds to the strategy vault
     * @notice Excess funds cannot be used when there is a withdrawal request
     */
    function strategyDeposit(uint256 _amount) public onlyDao nonReentrant {
        if (strategyVault == address(0)) {
            revert Errors.InvalidAddr();
        }

        _checkFunds(_amount, true);

        // Record the total deposit funds
        strategyAmount += _amount;

        (bool success,) = strategyVault.call{value: _amount}("");
        if (!success) revert Errors.TransferFailed();
        emit StrategyDeposited(_amount, strategyAmount);
    }

    /**
     * @notice DAO deposit funds to the strategy vault
     * @notice The strategy vault returns funds
     * Rewards should not be returned through this method.
     * Rewards should be recharged to the execution layer and consensus layer vaults
     */
    function strategyReturn() public payable {
        uint256 _amount = msg.value;
        // No overpayment allowed
        strategyAmount -= _amount;
        emit StrategyReturn(_amount);
    }

    /**
     * @notice set DAO address
     */
    function setDao(address _dao) public onlyOwner {
        _setDao(_dao);
    }

    /**
     * @notice update validator manager
     * @param _validatorManager new validator manager
     */
    function setValidatorManager(address _validatorManager) public onlyDao {
        _setValidatorManager(_validatorManager);
    }

    /**
     * @notice update rate manager
     * @param _rateManager new rate manager
     */
    function setRateManager(address _rateManager) public onlyDao {
        _setRateManager(_rateManager);
    }

    /**
     * @notice update withdarawal delay block number
     * @param _withdrawalDelayBlocks new delay block number
     */
    function setWithdrawalDelayBlocks(uint256 _withdrawalDelayBlocks) public onlyDao {
        _setWithdrawalDelayBlocks(_withdrawalDelayBlocks);
    }

    /**
     * @notice update validatorRegistry
     * @param _validatorRegistry new validatorRegistry
     */
    function setValidatorRegistry(address _validatorRegistry) public onlyDao {
        _setValidatorRegistry(_validatorRegistry);
    }

    /**
     * @notice update unstakeAllowed
     * @param _unstakeAllowed unstake allowed
     */
    function setUnstakeAllowed(bool _unstakeAllowed) public onlyDao {
        emit UnstakeAllowedUpdated(unstakeAllowed, _unstakeAllowed);
        unstakeAllowed = _unstakeAllowed;
    }

    /**
     * @notice stop protocol
     */
    function pause() external onlyDao {
        _pause();
    }

    /**
     * @notice start protocol
     */
    function unpause() external onlyDao {
        _unpause();
    }

    /**
     * @notice lsdETH to ETH exchange rate
     * @param _requireEthAmount require amount
     * @param _isCheckWithdrawalReuqest whether to check for asynchronous withdrawal requests
     */
    function _checkFunds(uint256 _requireEthAmount, bool _isCheckWithdrawalReuqest) internal virtual {}

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[48] private __gap;
}
