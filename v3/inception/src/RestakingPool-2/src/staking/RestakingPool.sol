// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import "src/interfaces/eigenLayer/IEigenPodManager.sol";
import {Errors} from "src/libraries/Errors.sol";
import "src/interfaces/IRestakingPool.sol";
import "src/interfaces/IELVault.sol";
import "src/staking/BasePool.sol";
import "src/interfaces/IRestakingPod.sol";

/**
 * @title Liquidity Restaking pool
 * @author NodeDAO
 * @notice Restaking pool on top of BasePool
 */
contract RestakingPool is Initializable, BasePool, IRestakingPool {
    address public elRewardsAddress;

    IEigenPodManager public eigenLayerEigenPodManager;
    address[] internal restakingPods;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _ownerAddr,
        uint256 _apr,
        address _dao,
        address _elRewardsAddress,
        address _poolToken,
        address _rateManager,
        address _validatorManager,
        address _depositContract,
        address _eigenLayerEigenPodManager,
        address[] memory _restakingPods
    ) public initializer {
        __BasePool_init(
            _ownerAddr, 0, _apr, 0, _dao, _poolToken, _rateManager, _validatorManager, _depositContract, false
        );
        elRewardsAddress = _elRewardsAddress;
        eigenLayerEigenPodManager = IEigenPodManager(_eigenLayerEigenPodManager);

        for (uint256 i = 0; i < _restakingPods.length; ++i) {
            address _restakingPod = _restakingPods[i];
            _checkRestakingPod(_restakingPod);
            restakingPods.push(_restakingPod);
        }
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
        address _restakingPod,
        bytes[] calldata _pubkeys,
        bytes[] calldata _signatures,
        bytes32[] calldata _depositDataRoots
    ) external onlyValidatorManager {
        if (!_isRestakingPod(_restakingPod)) {
            revert Errors.RestakingPodNotFound();
        }

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

        for (uint256 i = 0; i < _pubkeyLength; ++i) {
            IRestakingPod(_restakingPod).stake{value: 32 ether}(_pubkeys[i], _signatures[i], _depositDataRoots[i]);
        }

        IRestakingPod(_restakingPod).setStakedButNotVerifiedEth(_totalStakeAmount);
        emit ValidatorRegistration(_pubkeys);
    }

    /**
     * @notice Override _checkFunds
     */
    function _checkFunds(uint256 _requireEthAmount, bool) internal override {
        uint256 _poolBalance = address(this).balance;
        if (_requireEthAmount > _poolBalance) {
            IELVault(elRewardsAddress).reinvestment();
            claimDelayedWithdrawals();
            _poolBalance = address(this).balance;
            if (_requireEthAmount > _poolBalance) {
                revert Errors.InsufficientFunds();
            }
        }
    }

    /**
     * @notice Dao add restakingPod
     */
    function addRestakingPod(address _restakingPod) external onlyDao {
        _checkRestakingPod(_restakingPod);
        restakingPods.push(_restakingPod);
        emit RestakingPodAdded(_restakingPod);
    }

    /**
     * @notice Checks that the given address is a restakingpod
     */
    function _checkRestakingPod(address _restakingPod) internal {
        if (
            IRestakingPod(_restakingPod).eigenLayerEigenPod()
                != address(eigenLayerEigenPodManager.ownerToPod(_restakingPod))
        ) {
            revert Errors.EigenPodMismatch();
        }
    }

    /**
     * @notice Check the given address in the restakingPods list
     */
    function _isRestakingPod(address _restakingPod) internal view returns (bool) {
        bool found = false;
        uint256 rpLength = restakingPods.length;
        for (uint256 i = 0; i < rpLength;) {
            if (address(restakingPods[i]) == _restakingPod) {
                found = true;
                break;
            }

            unchecked {
                ++i;
            }
        }

        return found;
    }

    /**
     * @notice claimDelayedWithdrawals
     * Because withdrawal permissions cannot be controlled, and EigenLayer has delays.
     * So withdrawalDelayBlocks should be 0 (for fairness, otherwise the funds can be withdrawn by 'unstakeETH')
     */
    function claimDelayedWithdrawals() public {
        uint256 rpLength = restakingPods.length;
        for (uint256 i = 0; i < rpLength;) {
            IRestakingPod(restakingPods[i]).claimDelayedWithdrawals();
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Override withdrawCredentials
     */
    function withdrawCredentials() public view returns (bytes[] memory) {
        uint256 rpLength = restakingPods.length;
        bytes[] memory wcs = new bytes[](rpLength);
        for (uint256 i = 0; i < rpLength;) {
            wcs[i] = IRestakingPod(restakingPods[i]).withdrawCredentials();
            unchecked {
                ++i;
            }
        }
        return wcs;
    }

    /**
     * @notice get restaking pods
     */
    function getRestakingPods() external view returns (address[] memory) {
        return restakingPods;
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
        uint256 _pendingAmount = 0;
        for (uint256 i = 0; i < restakingPods.length;) {
            _pendingAmount += IRestakingPod(restakingPods[i]).getClaimableDelayedWithdrawals();
            unchecked {
                ++i;
            }
        }

        return _pendingAmount;
    }

    /**
     * @notice Funds from the execution layer reward address and consensus layer rewards only issue event;
     * Funds from other addresses are stake
     */
    receive() external payable {
        address _sender = msg.sender;
        if (_sender == address(elRewardsAddress) || _isRestakingPod(_sender)) {
            emit Received(_sender, msg.value);
        } else {
            _stakeETH();
        }
    }

    /**
     * @notice Contract type id
     */
    function typeId() public pure override returns (bytes32) {
        return keccak256("RestakingPool");
    }

    /**
     * @notice Contract version
     */
    function version() public pure override returns (uint8) {
        return 2;
    }
}
