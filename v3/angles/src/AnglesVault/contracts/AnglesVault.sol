// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

import "./token/utils/Initializable.sol";
import "./token/utils/StableMath.sol";
import {anS} from "./token/anS.sol";
import {Governable} from "./token/governance/Governable.sol";
import {SFC} from "./interfaces/SFC.sol";

contract AnglesVault is Initializable, Governable {
    using StableMath for uint256;

    bool public capitalDisabled;

    struct Validator {
        uint256 validatorId;
        uint8 weight;
        uint256 limit;
        uint256 SInTransit;
    }
    Validator[] public validatorsIndexed;
    mapping(uint256 => uint256) public withdrawToAmount;

    enum DelegateStrategy {
        // Delegate to each validator amounts proportional to their weight.
        // Does not look at vault stake in the validators, or the total stakes of the validators.
        // If either of the validators is full, delegate the rest to the other ones proportional to their weight.
        WeightedDeposits,
        // Fill the validator with the smallest weighted vault's stake.
        // If it reaches the validator limit, fills the next one in order.
        SmallestWeightedVaultStake,
        // Fill the validator with the smallest weighted total stake.
        // If it is full, fill the next one in order.
        SmallestWeightedTotalStake,
        // Fill the validators in order of indexes.
        InIndexOrder
    }
    DelegateStrategy public delegateStrategy;

    uint256 public minDeposit;
    uint256 public feeNom;
    uint256 public feeDenom;
    uint256 public maxSupplyDiff;
    uint256 public vaultBuffer;
    uint256 public withdrawIdCounter;
    uint256 public withdrawalClaimDelay;

    // in case of rebalance we'll need to withdraw delegation & not lose vault value before actual claiming liquid S
    uint256 public SInTransit;

    // stores liquid S that can be distributed to queue / delegated to validator
    uint256 public SBalance;

    anS public ans;
    SFC public sfc;

    // receives performance fees
    address public feeContainerAddress;

    // access control
    address public adminAddr;
    address public adminTempAddr;
    address public operatorAddr;
    address public privateInteractorAddr;

    mapping(address => bool) public receiveWhitelist;

    struct WithdrawalQueueMetadata {
        // cumulative total of all withdrawal requests, including the ones that have already been claimed
        uint128 queued;
        // cumulative total of all the requests that can be claimed including the ones that have already been claimed
        uint128 claimable;
        // total of all the requests that have been claimed
        uint128 claimed;
        // index of the next withdrawal request starting at 0
        uint128 nextWithdrawalIndex;
    }

    WithdrawalQueueMetadata public withdrawalQueueMetadata;

    struct WithdrawalRequest {
        address withdrawer;
        bool claimed;
        uint40 timestamp; // timestamp of the withdrawal request
        uint128 amount;
        uint128 queued;
    }

    mapping(uint256 => WithdrawalRequest) public withdrawalRequests;

    event PermissionsChanged(
        address indexed operator,
        address indexed privateInteractor
    );
    event OwnershipTransferRequested(address indexed newAdmin);
    event OwnershipTransferred(address indexed newAdmin);
    event VaultSettingsChanged(
        uint256 _newWithdrawalClaimDelay,
        uint256 _newVaultBuffer,
        uint256 _newMinDeposit,
        uint256 _newMaxSupplyDiff
    );
    event FeeSettingsChanged(
        uint256 _newFeeNom,
        uint256 _newFeeDenom,
        address _newFeeContainerAddress
    );
    event ValidatorAdded(
        uint256 index,
        uint256 validatorId,
        uint8 weight,
        uint256 limit
    );
    event ValidatorDeleted(uint256 index, uint256 validatorId);
    event ValidatorSettingsChanged(
        uint256 index,
        uint8 oldWeight,
        uint8 newWeight,
        uint256 oldLimit,
        uint256 newLimit
    );
    event ValidatorsSwapped(uint8 index1, uint8 index2);
    event CapitalDisabledChanged(bool _value);
    event ReceiveWhitelistAdded(address _addr);
    event ReceiveWhitelistDeleted(address _addr);
    event DelegateStrategyChanged(DelegateStrategy newStrategy);
    event UndelegateRequested(
        uint256 _validatorId,
        uint256 _amount,
        uint256 _wrID
    );
    event WithdrawExecuted(
        uint256 _validatorId,
        uint256 _wrID,
        uint256 _received
    );
    event WithdrawSlashedWithCompensationExecuted(
        uint256 _validatorId,
        uint256 _wrID,
        uint256 _requested,
        uint256 _received,
        uint256 _compensationUsed
    );
    event SingleAssetAllocated(uint256 _validatorId, uint256 _amount);
    event SingleRewardsClaimed(uint256 _validatorId);
    // event Donated(address _who, uint256 _amount);
    event Mint(address _who, uint256 _amount);
    event AssetAllocated(uint256 _amount);
    event VaultBufferState(uint256 targetAmount, uint256 availableAmount);
    event WithdrawalClaimable(uint256 _claimable, uint256 _newClaimable);
    event YieldDistribution(address _to, uint256 _yield, uint256 _fee);
    event WithdrawalRequested(
        address indexed _withdrawer,
        uint256 indexed _requestId,
        uint256 _amount,
        uint256 _queued
    );
    event WithdrawalClaimed(
        address indexed _withdrawer,
        uint256 indexed _requestId,
        uint256 _amount
    );
    event RewardsProcessed(uint256 _restaked, uint256 _claimed);

    modifier onlyAdmin() {
        require(msg.sender == adminAddr, "Not allowed.");
        _;
    }

    modifier onlyOperator() {
        require(
            msg.sender == operatorAddr || msg.sender == adminAddr,
            "Not allowed."
        );
        _;
    }

    modifier whenCapitalEnabled() {
        require(
            !capitalDisabled ||
                msg.sender == privateInteractorAddr ||
                msg.sender == adminAddr,
            "Deposits and withdrawals not allowed unless permitted."
        );
        _;
    }

    modifier whenNotSlashed() {
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            // We don't check for slashing, if there is no stake in the validator and no funds in transit
            if (
                sfc.getStake(address(this), validatorsIndexed[i].validatorId) ==
                0 &&
                validatorsIndexed[i].SInTransit == 0
            ) {
                continue;
            }
            require(
                !sfc.isSlashed(validatorsIndexed[i].validatorId),
                "Validator is slashed"
            );
        }
        _;
    }

    receive() external payable {
        require(receiveWhitelist[msg.sender], "Wrong sender");
    }

    function initialize(
        address _gov,
        address _ans,
        address _feeContainer,
        address _sfc
    ) public onlyGovernor initializer {
        adminAddr = _gov;
        operatorAddr = _gov;
        privateInteractorAddr = _gov;
        ans = anS(_ans);
        sfc = SFC(_sfc);
        feeContainerAddress = _feeContainer;
        feeNom = 1e3; // 1000
        feeDenom = 1e4; // 10000
        withdrawIdCounter = 1e4; // 10000
        withdrawalClaimDelay = 14 days;
        minDeposit = 1e17; // 0.1
        maxSupplyDiff = 3e16; // 0.03
        vaultBuffer = 1e14; // 0.01% (0.0001)

        validatorsIndexed.push(Validator(15, 1, 25e25, 0)); // 25e25 is 1/4 of 1e27. (250Million is 1/4 of 1Billion)
        validatorsIndexed.push(Validator(16, 1, 25e25, 0));
        validatorsIndexed.push(Validator(17, 1, 25e25, 0));
        validatorsIndexed.push(Validator(18, 1, 25e25, 0));

        receiveWhitelist[address(sfc)] = true;
    }

    // ================================================================================
    // Admin functions
    // ================================================================================

    function setPermissions(
        address _operator,
        address _privateInteractor
    ) external onlyAdmin {
        operatorAddr = _operator;
        privateInteractorAddr = _privateInteractor;

        emit PermissionsChanged(_operator, _privateInteractor);
    }

    function passOwnership(address _newAdmin) external onlyAdmin {
        adminTempAddr = _newAdmin;

        emit OwnershipTransferRequested(_newAdmin);
    }

    function claimOwnership() external nonReentrant {
        require(msg.sender == adminTempAddr, "Not allowed.");
        adminAddr = adminTempAddr;
        adminTempAddr = address(0);

        emit OwnershipTransferred(adminAddr);
    }

    function changeVaultSettings(
        uint256 _newWithdrawalClaimDelay,
        uint256 _newVaultBuffer,
        uint256 _newMinDeposit,
        uint256 _newMaxSupplyDiff
    ) external onlyAdmin {
        withdrawalClaimDelay = _newWithdrawalClaimDelay;

        vaultBuffer = _newVaultBuffer;

        minDeposit = _newMinDeposit;

        maxSupplyDiff = _newMaxSupplyDiff;

        emit VaultSettingsChanged(
            _newWithdrawalClaimDelay,
            _newVaultBuffer,
            _newMinDeposit,
            _newMaxSupplyDiff
        );
    }

    function changeFeeSettings(
        uint256 _newFeeNom,
        uint256 _newFeeDenom,
        address _newFeeContainerAddress
    ) external onlyAdmin {
        require(feeNom < feeDenom, "FeeNom must be less than FeeDenom");
        feeNom = _newFeeNom;
        feeDenom = _newFeeDenom;

        require(_newFeeContainerAddress != address(0), "Invalid address");

        feeContainerAddress = _newFeeContainerAddress;

        emit FeeSettingsChanged(
            _newFeeNom,
            _newFeeDenom,
            _newFeeContainerAddress
        );
    }

    function addValidator(
        uint256 validatorId,
        uint8 weight,
        uint256 limit
    ) external onlyAdmin {
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            require(
                validatorsIndexed[i].validatorId != validatorId,
                "Validator already exists"
            );
        }

        validatorsIndexed.push(Validator(validatorId, weight, limit, 0));

        emit ValidatorAdded(
            validatorsIndexed.length - 1,
            validatorId,
            weight,
            limit
        );
    }

    /// @dev Deletes a validator from the vault, after the funds were claimed.
    /// It is expected that first, the limit and weight are set to 0, all funds are claimed,
    /// and only then the validator is deleted.
    function deleteValidator(uint8 index) external onlyAdmin {
        require(index < validatorsIndexed.length, "Index out of bounds");

        // Make sure that the validator has no stake before deleting
        require(
            sfc.getStake(address(this), validatorsIndexed[index].validatorId) ==
                0,
            "Validator has stake"
        );

        // Make sure that the validator has no pending rewards before deleting
        require(
            sfc.pendingRewards(
                address(this),
                validatorsIndexed[index].validatorId
            ) == 0,
            "Validator has pending rewards"
        );

        require(
            validatorsIndexed[index].SInTransit == 0,
            "Validator has funds in transit"
        );

        emit ValidatorDeleted(index, validatorsIndexed[index].validatorId);

        if (index != validatorsIndexed.length - 1) {
            validatorsIndexed[index] = validatorsIndexed[
                validatorsIndexed.length - 1
            ];
        }
        validatorsIndexed.pop();
    }

    function changeValidatorSettings(
        uint8 index,
        uint8 weight,
        uint256 limit
    ) external onlyAdmin {
        require(index < validatorsIndexed.length, "Index out of bounds");

        uint8 old_weight = validatorsIndexed[index].weight;
        uint256 old_limit = validatorsIndexed[index].limit;

        validatorsIndexed[index].weight = weight;
        validatorsIndexed[index].limit = limit;

        emit ValidatorSettingsChanged(
            index,
            old_weight,
            weight,
            old_limit,
            limit
        );
    }

    function swapValidators(uint8 index1, uint8 index2) external onlyAdmin {
        require(index1 < validatorsIndexed.length, "Index1 out of bounds");
        require(index2 < validatorsIndexed.length, "Index2 out of bounds");

        Validator memory temp = validatorsIndexed[index1];
        validatorsIndexed[index1] = validatorsIndexed[index2];
        validatorsIndexed[index2] = temp;

        emit ValidatorsSwapped(index1, index2);
    }

    function changeCapitalDisabled(bool _value) external onlyAdmin {
        capitalDisabled = _value;

        emit CapitalDisabledChanged(_value);
    }

    function addReceiveWhitelist(address _addr) external onlyAdmin {
        receiveWhitelist[_addr] = true;

        emit ReceiveWhitelistAdded(_addr);
    }

    function deleteReceiveWhitelist(address _addr) external onlyAdmin {
        delete receiveWhitelist[_addr];

        emit ReceiveWhitelistDeleted(_addr);
    }

    function changeDelegateStrategy(
        DelegateStrategy newStrategy
    ) external onlyAdmin {
        delegateStrategy = newStrategy;

        emit DelegateStrategyChanged(newStrategy);
    }

    // ================================================================================
    // Operator functions
    // ================================================================================

    // in case of validator reshaffle (new id, etc) we'll need to migrate
    // capital from one validator to other in full capacity
    // + if withdraw queue needs liquidity this might be used as well
    function newRebalanceUndelegateOp(
        uint8 _index,
        uint256 _amount
    ) external onlyOperator {
        require(_index < validatorsIndexed.length, "Index out of bounds");

        uint256 _wrID = _incrementWithdrawIdCounter();
        withdrawToAmount[_wrID] = _amount;
        SInTransit += _amount;
        validatorsIndexed[_index].SInTransit += _amount;
        sfc.undelegate(validatorsIndexed[_index].validatorId, _wrID, _amount);

        emit UndelegateRequested(
            validatorsIndexed[_index].validatorId,
            _amount,
            _wrID
        );
    }

    // in case of validator reshaffle (new id, etc)
    function execRebalanceWithdrawOp(
        uint8 _index,
        uint256 _wrID,
        bool _doApplyToQueue
    ) external onlyOperator {
        require(_index < validatorsIndexed.length, "Index out of bounds");

        uint256 _balanceBefore = address(this).balance;

        sfc.withdraw(validatorsIndexed[_index].validatorId, _wrID);

        uint256 _received = address(this).balance - _balanceBefore;
        require(
            _received == withdrawToAmount[_wrID],
            "amount withdrawn less than requested"
        );

        SInTransit -= _received;
        validatorsIndexed[_index].SInTransit -= _received;

        SBalance += _received;

        emit WithdrawExecuted(
            validatorsIndexed[_index].validatorId,
            _wrID,
            _received
        );

        if (_doApplyToQueue) {
            _addWithdrawalQueueLiquidity();
        }
    }

    // Allows getting the funds back from a validator that has been slashed.
    // Missing funds are compensated by the operator.
    // After that the slashed validator can be deleted and protocol works as usual.
    function execRebalanceWithdrawSlashedWithCompensationOp(
        uint8 _index,
        uint256 _wrID,
        bool expectFullSlashing
    ) external payable onlyOperator {
        require(
            sfc.isSlashed(validatorsIndexed[_index].validatorId),
            "Validator is not slashed"
        );
        uint256 compensationProvided = msg.value;

        uint256 _balanceBefore = address(this).balance;

        if (expectFullSlashing) {
            try
                sfc.withdraw(validatorsIndexed[_index].validatorId, _wrID)
            {} catch {}
        } else {
            sfc.withdraw(validatorsIndexed[_index].validatorId, _wrID);
        }

        uint256 _received = address(this).balance - _balanceBefore;
        uint256 compensationNeeded = withdrawToAmount[_wrID] - _received;
        require(
            compensationProvided >= compensationNeeded,
            "Compensation is too small"
        );

        SInTransit -= withdrawToAmount[_wrID];
        validatorsIndexed[_index].SInTransit -= withdrawToAmount[_wrID];

        SBalance += withdrawToAmount[_wrID];

        if (compensationProvided > compensationNeeded) {
            (bool sent, ) = msg.sender.call{
                value: compensationProvided - compensationNeeded
            }("");
            require(sent, "Transfer Failed");
        }

        emit WithdrawSlashedWithCompensationExecuted(
            validatorsIndexed[_index].validatorId,
            _wrID,
            withdrawToAmount[_wrID],
            _received,
            compensationNeeded
        );
    }

    function delegateSingleFromStashOp(
        uint256 _validatorId,
        uint256 amount
    ) external onlyOperator {
        require(sAvailable() >= amount, "Amount exceeds unused funds");

        sfc.delegate{value: amount}(_validatorId);
        SBalance -= amount;

        emit SingleAssetAllocated(_validatorId, amount);
    }

    function claimSingle(
        uint256 _validatorId,
        bool _withRebase
    ) external onlyOperator nonReentrant {
        _claimRewardsSingle(_validatorId);
        if (_withRebase) {
            _rebase();
        }

        emit SingleRewardsClaimed(_validatorId);
    }

    function rebase() external nonReentrant onlyOperator {
        _rebase();
    }

    function processRewardsAndPostProcess(
        bool doPostProcess
    ) external nonReentrant onlyOperator {
        (, uint256 claimed) = _processRewards();
        if (doPostProcess && claimed > 0) {
            _addWithdrawalQueueLiquidity();
        }
        _rebase();
    }

    function allocate() external whenCapitalEnabled nonReentrant onlyOperator {
        // Add any unallocated S to the withdrawal queue first
        _addWithdrawalQueueLiquidity();

        _allocate();
    }

    // ================================================================================
    // User functions
    // ================================================================================

    // will revert if trying to deposit more than the validators can fit
    function deposit()
        external
        payable
        nonReentrant
        whenCapitalEnabled
        whenNotSlashed
    {
        uint256 _value = totalValue();
        uint256 amount = msg.value;
        require(amount >= minDeposit, "too small deposit");
        // process rewards before rebase
        if (_value > 0) {
            _processRewards();
            //rebase before minting new staked receipts
            _rebase();
        }
        //mint staked receipts
        ans.mint(msg.sender, amount);
        SBalance += amount;
        _addWithdrawalQueueLiquidity();

        // Reverts if trying to deposit more than the validators can fit
        _allocate();

        emit Mint(msg.sender, amount);
    }

    function requestWithdrawal(
        uint256 _amount
    )
        external
        whenCapitalEnabled
        whenNotSlashed
        nonReentrant
        returns (uint256 requestId, uint256 queued)
    {
        require(withdrawalClaimDelay > 0, "Async withdrawals not enabled");
        require(_amount > 0, "Amount must be greater than 0");

        // The check that the requester has enough S is done in to later burn call

        requestId = withdrawalQueueMetadata.nextWithdrawalIndex;
        queued = withdrawalQueueMetadata.queued + _amount;

        // Store the next withdrawal request
        withdrawalQueueMetadata.nextWithdrawalIndex = SafeCast.toUint128(
            requestId + 1
        );
        // Store the updated queued amount which reserves S in the withdrawal queue
        // and reduces the vault's total assets
        withdrawalQueueMetadata.queued = SafeCast.toUint128(queued);
        // Store the user's withdrawal request
        withdrawalRequests[requestId] = WithdrawalRequest({
            withdrawer: msg.sender,
            claimed: false,
            timestamp: uint40(block.timestamp),
            amount: SafeCast.toUint128(_amount),
            queued: SafeCast.toUint128(queued)
        });

        // Burn the user's anS
        ans.burn(msg.sender, _amount);

        _addWithdrawalQueueLiquidity();

        // Prevent withdrawal if the vault is solvent by more than the allowed percentage
        _postRedeem();

        emit WithdrawalRequested(msg.sender, requestId, _amount, queued);
    }

    function claimWithdrawal(
        uint256 _requestId
    )
        external
        whenCapitalEnabled
        whenNotSlashed
        nonReentrant
        returns (uint256 amount)
    {
        // Try to get more liquidity if there is not enough available
        if (
            withdrawalRequests[_requestId].queued >
            withdrawalQueueMetadata.claimable
        ) {
            (, uint256 claimed) = _processRewards();
            if (claimed > 0) {
                _addWithdrawalQueueLiquidity();
            }
        }

        amount = _claimWithdrawal(_requestId);

        SBalance -= amount;

        // Transfer S from the vault to the withdrawer
        (bool withdrawn, ) = msg.sender.call{value: amount}("");
        require(withdrawn, "Transfer Failed");

        // Prevent insolvency
        _postRedeem();
    }

    // ================================================================================
    // Public view functions
    // ================================================================================

    function totalValue() public view returns (uint256) {
        WithdrawalQueueMetadata memory queue = withdrawalQueueMetadata;
        uint256 balance = SBalance + SInTransit + _getStakes();
        if (balance + queue.claimed < queue.queued) {
            return 0;
        }
        return balance + queue.claimed - queue.queued;
    }

    /// @dev Calculate how much S in the vault is not reserved for the withdrawal queue.
    // That is, it is available to be redeemed or deposited into a strategy.
    function sAvailable() public view returns (uint256) {
        WithdrawalQueueMetadata memory queue = withdrawalQueueMetadata;

        // The amount of S that is still to be claimed in the withdrawal queue
        uint256 outstandingWithdrawals = queue.queued - queue.claimed;

        // The amount of sitting in S in the vault
        uint256 sBalance = SBalance;

        // If there is not enough S in the vault to cover the outstanding withdrawals
        if (sBalance <= outstandingWithdrawals) {
            return 0;
        }

        return sBalance - outstandingWithdrawals;
    }

    function numberOfValidators() external view returns (uint256) {
        return validatorsIndexed.length;
    }

    function validatorAvailableCapacity(
        uint256 index
    ) public view returns (uint256) {
        require(index < validatorsIndexed.length, "Index out of bounds");

        // Cannot fit anything if the weight is 0
        if (validatorsIndexed[index].weight == 0) {
            return 0;
        }

        // SFC.Validator memory validator
        (
            uint256 validatorStatus,
            uint256 validatorReceivedStake,
            ,
            ,
            ,
            ,

        ) = sfc.getValidator(validatorsIndexed[index].validatorId);

        // Cannot fit anything if the validator is not OK_STATUS
        // SFC: uint256 internal constant OK_STATUS = 0;
        if (validatorStatus != 0) {
            return 0;
        }

        // Cannot fit anything if the validator is already full
        if (validatorReceivedStake >= validatorsIndexed[index].limit) {
            return 0;
        } else {
            return validatorsIndexed[index].limit - validatorReceivedStake;
        }
    }

    function validatorsAvailableCapacity()
        public
        view
        returns (uint256[] memory)
    {
        uint256[] memory canFit = new uint256[](validatorsIndexed.length);
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            canFit[i] = validatorAvailableCapacity(i);
        }
        return canFit;
    }

    function totalValidatorsAvailbleCapacity() external view returns (uint256) {
        uint256 total = 0;
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            total += validatorAvailableCapacity(i);
        }
        return total;
    }

    // ================================================================================
    // Internal functions
    // ================================================================================

    function _allocate() internal {
        uint256 sAvailableInVault = sAvailable();
        // No need to do anything if there isn't any S in the vault to allocate
        if (sAvailableInVault == 0) return;

        // Calculate the target buffer for the vault using the total supply
        uint256 totalSupply = ans.totalSupply();
        uint256 targetBuffer = totalSupply.mulTruncate(vaultBuffer);

        // If available S in the Vault is below or equal the target buffer then there's nothing to allocate
        if (sAvailableInVault <= targetBuffer) {
            emit VaultBufferState(targetBuffer, sAvailableInVault);
            return;
        }

        // The amount of assets to allocate to the default strategy
        uint256 allocateAmount = sAvailableInVault - targetBuffer;
        emit VaultBufferState(targetBuffer, targetBuffer);

        // Reverts if all available delegators overflow
        _delegate(allocateAmount);

        emit AssetAllocated(allocateAmount);
    }

    /// @dev Try and delegate given amount to the validators
    ///
    /// Multiple strategies are available.
    /// The goal of every strategy is to delegate as much as possible to the validators.
    /// The 'deposit()' reverts if unable to delegate the full amount.
    /// Some of the strategies may be gas havy, but we intend to keep the number of validators low.
    function _delegate(uint256 amount) internal {
        uint256[] memory canFitInDelegators = validatorsAvailableCapacity();
        uint256 canFitInDelegatorsTotal = 0;
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            canFitInDelegatorsTotal += canFitInDelegators[i];
        }

        // Output for a strategy
        uint256[] memory amounts;

        if (amount > canFitInDelegatorsTotal) {
            revert("Validators are full");
        } else if (amount == canFitInDelegatorsTotal) {
            amounts = canFitInDelegators;
        } else {
            // amount is less than canFitInDelegatorsTotal. Should use strategy here
            if (delegateStrategy == DelegateStrategy.WeightedDeposits) {
                amounts = _splitAmountWeightedDeposits(
                    amount,
                    canFitInDelegators
                );
            } else if (
                delegateStrategy == DelegateStrategy.SmallestWeightedVaultStake
            ) {
                amounts = _splitAmountSmallestWeightedVaultStake(
                    amount,
                    canFitInDelegators
                );
            } else if (
                delegateStrategy == DelegateStrategy.SmallestWeightedTotalStake
            ) {
                amounts = _splitAmountSmallestWeightedTotalStake(
                    amount,
                    canFitInDelegators
                );
            } else if (delegateStrategy == DelegateStrategy.InIndexOrder) {
                amounts = _splitAmountInIndexOrder(amount, canFitInDelegators);
            } else {
                // Should be unreachable. Just in case

                revert("Invalid delegate strategy");
            }
        }

        // Deposit amounts[] to corresponsing validators
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            if (amounts[i] > 0) {
                sfc.delegate{value: amounts[i]}(
                    validatorsIndexed[i].validatorId
                );
            }
        }

        SBalance -= amount;
    }

    function _splitAmountWeightedDeposits(
        uint256 amount,
        uint256[] memory canFitInDelegators
    ) internal view returns (uint256[] memory amounts) {
        amounts = new uint256[](validatorsIndexed.length);

        // This may look terrible for gas, but in real life the number of iteractions in this loop is less or equal to the numOfValidators.
        // So, in the worst case it is O(n^2). We intend to keep the number of validators low.
        //
        // Will never loop forever, because the amount is guaranteed to be less than the totalValidatorsAvailbleCapacity()
        while (amount > 0) {
            uint256 totalWeightOfNonFullValidators = 0;
            for (uint8 i = 0; i < validatorsIndexed.length; i++) {
                if (canFitInDelegators[i] > 0) {
                    totalWeightOfNonFullValidators += validatorsIndexed[i]
                        .weight;
                }
            }

            uint256 chunkPerWeight = amount / totalWeightOfNonFullValidators;
            uint256 extraDust = amount % totalWeightOfNonFullValidators;

            for (uint8 i = 0; i < validatorsIndexed.length; i++) {
                uint256 amountToAdd = Math.min(
                    chunkPerWeight * validatorsIndexed[i].weight,
                    canFitInDelegators[i]
                );
                amounts[i] += amountToAdd;
                amount -= amountToAdd;
                canFitInDelegators[i] -= amountToAdd;
            }

            // If all deposits were successful in full and we have only extraDust left
            if (extraDust > 0 && amount == extraDust) {
                for (uint8 i = 0; i < validatorsIndexed.length; i++) {
                    if (canFitInDelegators[i] >= 0 && amount > 0) {
                        uint256 amountToAdd = Math.min(
                            extraDust,
                            canFitInDelegators[i]
                        );
                        amounts[i] += amountToAdd;
                        amount -= amountToAdd;
                    }
                }
            }
        }
    }

    function _splitAmountSmallestWeightedVaultStake(
        uint256 amount,
        uint256[] memory canFitInDelegators
    ) internal view returns (uint256[] memory amounts) {
        amounts = new uint256[](validatorsIndexed.length);

        uint256[] memory weightedStakes = new uint256[](
            validatorsIndexed.length
        );
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            if (canFitInDelegators[i] == 0) {
                continue;
            }
            // Division by zero can not happen, as for every validator with weight zero, the canfitInDelegators is zero
            weightedStakes[i] =
                sfc.getStake(address(this), validatorsIndexed[i].validatorId) /
                validatorsIndexed[i].weight;
        }

        while (amount > 0) {
            uint256 minWeightedStake = type(uint256).max;
            uint8 minWeightedStakeIndex;

            for (uint8 i = 0; i < validatorsIndexed.length; i++) {
                if (canFitInDelegators[i] == 0) {
                    continue;
                }
                if (weightedStakes[i] < minWeightedStake) {
                    minWeightedStake = weightedStakes[i];
                    minWeightedStakeIndex = i;
                }
            }

            amounts[minWeightedStakeIndex] = Math.min(
                amount,
                canFitInDelegators[minWeightedStakeIndex]
            );
            amount -= amounts[minWeightedStakeIndex];
            canFitInDelegators[minWeightedStakeIndex] -= amounts[
                minWeightedStakeIndex
            ];
        }
    }

    function _splitAmountSmallestWeightedTotalStake(
        uint256 amount,
        uint256[] memory canFitInDelegators
    ) internal view returns (uint256[] memory amounts) {
        amounts = new uint256[](validatorsIndexed.length);

        uint256[] memory weightedTotalStakes = new uint256[](
            validatorsIndexed.length
        );
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            if (canFitInDelegators[i] == 0) {
                continue;
            }
            (, uint256 validatorReceivedStake, , , , , ) = sfc.getValidator(
                validatorsIndexed[i].validatorId
            );
            // Division by zero can not happen, as for every validator with weight zero, the canfitInDelegators is zero
            weightedTotalStakes[i] =
                validatorReceivedStake /
                validatorsIndexed[i].weight;
        }

        while (amount > 0) {
            uint256 minWeightedTotalStake = type(uint256).max;
            uint8 minWeightedTotalStakeIndex;

            for (uint8 i = 0; i < validatorsIndexed.length; i++) {
                if (canFitInDelegators[i] == 0) {
                    continue;
                }
                if (weightedTotalStakes[i] < minWeightedTotalStake) {
                    minWeightedTotalStake = weightedTotalStakes[i];
                    minWeightedTotalStakeIndex = i;
                }
            }

            amounts[minWeightedTotalStakeIndex] = Math.min(
                amount,
                canFitInDelegators[minWeightedTotalStakeIndex]
            );
            amount -= amounts[minWeightedTotalStakeIndex];
            canFitInDelegators[minWeightedTotalStakeIndex] -= amounts[
                minWeightedTotalStakeIndex
            ];
        }
    }

    function _splitAmountInIndexOrder(
        uint256 amount,
        uint256[] memory canFitInDelegators
    ) internal view returns (uint256[] memory amounts) {
        amounts = new uint256[](validatorsIndexed.length);

        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            amounts[i] = Math.min(amount, canFitInDelegators[i]);
            amount -= amounts[i];

            if (amount == 0) {
                break;
            }
        }
    }

    function _claimWithdrawal(uint256 requestId) internal returns (uint256) {
        require(withdrawalClaimDelay > 0, "Async withdrawals not enabled");

        // Load the structs from storage into memory
        WithdrawalRequest memory request = withdrawalRequests[requestId];
        WithdrawalQueueMetadata memory queue = withdrawalQueueMetadata;

        require(
            request.timestamp + withdrawalClaimDelay <= block.timestamp,
            "Claim delay not met"
        );
        // If there isn't enough reserved liquidity in the queue to claim
        require(request.queued <= queue.claimable, "Queue pending liquidity");
        require(request.withdrawer == msg.sender, "Not requester");
        require(request.claimed == false, "Already claimed");

        // Store the request as claimed
        withdrawalRequests[requestId].claimed = true;
        // Store the updated claimed amount
        withdrawalQueueMetadata.claimed = queue.claimed + request.amount;

        emit WithdrawalClaimed(msg.sender, requestId, request.amount);

        return request.amount;
    }

    function _processRewards()
        internal
        returns (uint256 restaked, uint256 claimed)
    {
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            uint256 validatorPendingRewards = sfc.pendingRewards(
                address(this),
                validatorsIndexed[i].validatorId
            );
            if (validatorPendingRewards > 0) {
                if (validatorPendingRewards < validatorAvailableCapacity(i)) {
                    restaked += validatorPendingRewards;
                    sfc.restakeRewards(validatorsIndexed[i].validatorId);
                } else {
                    claimed += _claimRewardsSingle(
                        validatorsIndexed[i].validatorId
                    );
                }
            }
        }

        emit RewardsProcessed(restaked, claimed);
    }

    function _claimRewardsSingle(
        uint256 _validatorId
    ) internal returns (uint256 claimed) {
        uint256 balanceBefore = address(this).balance;
        sfc.claimRewards(_validatorId);
        uint256 balanceDiff = address(this).balance - balanceBefore;
        SBalance += balanceDiff;
        return balanceDiff;
    }

    function _addWithdrawalQueueLiquidity()
        internal
        returns (uint256 addedClaimable)
    {
        WithdrawalQueueMetadata memory queue = withdrawalQueueMetadata;

        // Check if the claimable S is less than the queued amount
        uint256 queueShortfall = queue.queued - queue.claimable;

        // No need to do anything if the withdrawal queue is fully funded
        if (queueShortfall == 0) {
            return 0;
        }

        uint256 sBalance = SBalance;

        // Of the claimable withdrawal requests, how much is unclaimed?
        // That is, the amount of S that is currently allocated for the withdrawal queue
        uint256 allocatedS = queue.claimable - queue.claimed;

        // If there is no unallocated S then there is nothing to add to the queue
        if (sBalance <= allocatedS) {
            return 0;
        }

        uint256 unallocatedS = sBalance - allocatedS;

        // the new claimable amount is the smaller of the queue shortfall or unallocated s
        addedClaimable = queueShortfall < unallocatedS
            ? queueShortfall
            : unallocatedS;
        uint256 newClaimable = queue.claimable + addedClaimable;

        // Store the new claimable amount back to storage
        withdrawalQueueMetadata.claimable = SafeCast.toUint128(newClaimable);

        // emit a WithdrawalClaimable event
        emit WithdrawalClaimable(newClaimable, addedClaimable);
    }

    function _getStakes() internal view returns (uint256 val) {
        for (uint8 i = 0; i < validatorsIndexed.length; i++) {
            val += sfc.getStake(
                address(this),
                validatorsIndexed[i].validatorId
            );
        }
    }

    function _postRedeem() internal {
        uint256 totalUnits = _rebase();

        if (maxSupplyDiff > 0) {
            require(totalUnits > 0, "Too many outstanding requests");

            uint256 diff = ans.totalSupply().divPrecisely(totalUnits);
            require(
                (diff > 1e18 ? diff - 1e18 : 1e18 - diff) <= maxSupplyDiff,
                "Backing supply liquidity error"
            );
        }
    }

    function _rebase() internal returns (uint256) {
        uint256 tokenSupply = ans.totalSupply();
        uint256 vaultValue = totalValue();
        if (tokenSupply == 0) {
            return vaultValue;
        }

        // Performance fee collection
        address _feeContainer = feeContainerAddress;
        if (_feeContainer != address(0) && (vaultValue > tokenSupply)) {
            uint256 yield = vaultValue - tokenSupply;
            uint256 fee = (yield * feeNom) / feeDenom;
            require(yield > fee, "Fee must not be greater than yield");
            if (fee > 0) {
                ans.mint(_feeContainer, fee);
            }
            emit YieldDistribution(_feeContainer, yield, fee);
        }

        // Only ratchet supply upwards
        tokenSupply = ans.totalSupply(); // Final check should use latest value
        if (vaultValue > tokenSupply) {
            ans.changeSupply(vaultValue);
        }
        return vaultValue;
    }

    function _incrementWithdrawIdCounter() internal returns (uint256) {
        withdrawIdCounter++;
        return withdrawIdCounter;
    }
}
