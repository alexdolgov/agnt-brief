// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {Errors} from "src/libraries/Errors.sol";
import "src/interfaces/INethPool.sol";
import "src/interfaces/IELVault.sol";
import "src/staking/BasePool.sol";
import "src/interfaces/IConsensusVault.sol";

/**
 * @title nETH Liquidity staking pool
 * @author NodeDAO
 * @notice Neth Liquidity Staking pool on top of BasePool
 */
contract NethPool is Initializable, BasePool, INethPool {
    address public elRewardsAddress;
    address public clRewardsAddress;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _ownerAddr,
        uint256 _apr,
        uint256 _totalUnderlyingAsset,
        address _dao,
        address _elRewardsAddress,
        address _clRewardsAddress,
        address _poolToken,
        address _rateManager,
        address _validatorManager,
        address _depositContract
    ) public initializer {
        __BasePool_init(
            _ownerAddr,
            50400,
            _apr,
            _totalUnderlyingAsset,
            _dao,
            _poolToken,
            _rateManager,
            _validatorManager,
            _depositContract,
            true
        );
        elRewardsAddress = _elRewardsAddress;
        clRewardsAddress = _clRewardsAddress;
    }

    /**
     * @notice Register validator to beacon
     * @param _depositContractRoot deposit contract root
     * @param _pubkeys validator pubkey
     * @param _signatures deposit signatures
     * @param _depositDataRoots deposit data roots
     */
    function registerValidator(
        bytes32 _depositContractRoot,
        bytes[] calldata _pubkeys,
        bytes[] calldata _signatures,
        bytes32[] calldata _depositDataRoots
    ) external onlyValidatorManager {
        if (_depositContractRoot != depositContract.get_deposit_root()) {
            revert Errors.DepositRootMismatch();
        }

        uint256 _pubkeyLength = _pubkeys.length;
        uint256 _totalStakeAmount = _pubkeyLength * 32 ether;
        _checkFunds(_totalStakeAmount, true);

        if (_pubkeyLength != _signatures.length || _pubkeyLength != _depositDataRoots.length) {
            revert Errors.InvalidParameter();
        }

        _registerPubkey(_pubkeys);

        bytes memory _withdrawCredentials = withdrawCredentials();
        for (uint256 i = 0; i < _pubkeyLength; ++i) {
            _deposit(_pubkeys[i], _withdrawCredentials, _signatures[i], _depositDataRoots[i]);
        }

        emit ValidatorRegistration(_pubkeys);
    }

    /**
     * @notice Contract type id
     */
    function typeId() public pure override returns (bytes32) {
        return keccak256("NethPool");
    }

    /**
     * @notice Contract version
     */
    function version() public pure override returns (uint8) {
        return 2;
    }

    /**
     * @notice Override _checkFunds
     */
    function _checkFunds(uint256 _requireEthAmount, bool _isCheckWithdrawalReuqest) internal override {
        uint256 _poolBalance = address(this).balance;

        if (_requireEthAmount > _poolBalance) {
            IELVault(elRewardsAddress).reinvestment();

            uint256 _requestAmount = 0;
            uint256 _clVaultBalance = clRewardsAddress.balance;
            if (_isCheckWithdrawalReuqest) {
                uint256 _totalWithdrawalAmount = totalWithdrawalAmount;
                if (_clVaultBalance > _totalWithdrawalAmount) {
                    _requestAmount = _clVaultBalance - _totalWithdrawalAmount;
                }
            } else {
                // _isCheckWithdrawalReuqest == false, called from claimWithdrawals
                // '_requestAmount' do not exceed '_requireEthAmount'
                if (_clVaultBalance > _requireEthAmount) {
                    _requestAmount = _requireEthAmount;
                } else {
                    // '_clVaultBalance' is insufficient, less withdrawal is allowed.
                    // If '_poolBalance' is still less than '_requireEthAmount', it will revert.
                    _requestAmount = _clVaultBalance;
                }
            }

            if (_requestAmount != 0) {
                IConsensusVault(clRewardsAddress).reinvestment(_requestAmount);
            }

            _poolBalance = address(this).balance;
            if (_requireEthAmount > _poolBalance) {
                revert Errors.InsufficientFunds();
            }
        }
    }

    /**
     * @notice getPoolAmount return pool balance + el rewards
     */
    function getPoolAmount() external view returns (uint256) {
        return address(this).balance + IELVault(elRewardsAddress).getPoolRewards();
    }

    /**
     * @notice getCLVaultAmount return cl rewards + withdrawal
     */
    function getCLVaultAmount() external view returns (uint256) {
        return clRewardsAddress.balance;
    }

    /**
     * @notice Override withdrawCredentials
     */
    function withdrawCredentials() public view returns (bytes memory) {
        return abi.encodePacked(hex"010000000000000000000000", clRewardsAddress);
    }

    /**
     * @notice Funds from the execution layer reward address and consensus layer rewards only issue event;
     * Funds from other addresses are stake
     */
    receive() external payable {
        address _sender = msg.sender;
        if (_sender == address(elRewardsAddress) || _sender == address(clRewardsAddress)) {
            emit Received(_sender, msg.value);
        } else {
            _stakeETH();
        }
    }
}
