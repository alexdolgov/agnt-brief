// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "./KeeperRegistryBase.sol";

/**
 * @notice Logic contract, works in tandem with KeeperRegistry as a proxy
 */
contract KeeperRegistryLogic is KeeperRegistryBase {
    using Address for address;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    /**
     * @param registryGasOverhead the gas overhead used by registry in performUpkeep
     */
    constructor(uint256 registryGasOverhead) KeeperRegistryBase(registryGasOverhead) {}

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function recoverFunds() external onlyOwner {
        uint256 total = address(this).balance;
        _transfer(payable(msg.sender), total - s_expectedBalance);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function setKeepers(address[] calldata keepers, address[] calldata payees) external onlyOwner {
        if (keepers.length != payees.length || keepers.length < 2) revert ParameterLengthError();
        for (uint256 i = 0; i < s_keeperList.length; i++) {
            address keeper = s_keeperList[i];
            s_keeperInfo[keeper].active = false;
        }
        for (uint256 i = 0; i < keepers.length; i++) {
            address keeper = keepers[i];
            KeeperInfo storage s_keeper = s_keeperInfo[keeper];
            address oldPayee = s_keeper.payee;
            address newPayee = payees[i];
            if (
                (newPayee == ZERO_ADDRESS) ||
                (oldPayee != ZERO_ADDRESS && oldPayee != newPayee && newPayee != IGNORE_ADDRESS)
            ) revert InvalidPayee();
            if (s_keeper.active) revert DuplicateEntry();
            s_keeper.active = true;
            if (newPayee != IGNORE_ADDRESS) {
                s_keeper.payee = newPayee;
            }
        }
        s_keeperList = keepers;
        emit KeepersUpdated(keepers, payees);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function setUpkeepTreasury(address upkeepTreasury) external onlyOwner {
        if (ZERO_ADDRESS == upkeepTreasury) {
            revert EmptyAddress();
        }

        s_upkeepTreasury = upkeepTreasury;
        emit UpkeepTreasuryUpdated(upkeepTreasury);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function addWhitelistedRegistrar(address registrar) external onlyOwner {
        if (ZERO_ADDRESS == registrar) {
            revert EmptyAddress();
        }
        if (s_whitelistedRegistrars.contains(registrar)) {
            revert DuplicateEntry();
        }
        s_whitelistedRegistrars.add(registrar);
        emit WhitelistedRegistrarAdded(registrar);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function removeWhitelistedRegistrar(address registrar) external onlyOwner {
        if (!s_whitelistedRegistrars.contains(registrar)) {
            revert NotContainedEntry();
        }
        s_whitelistedRegistrars.remove(registrar);
        emit WhitelistedRegistrarAdded(registrar);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function registerUpkeep(
        address target,
        uint32 gasLimit,
        address admin,
        bool useTreasury,
        bool singleExec,
        bytes calldata checkData
    ) external returns (uint256 id) {
        if (msg.sender != owner() && !s_whitelistedRegistrars.contains(msg.sender))
            revert OnlyCallableByOwnerOrRegistrar();

        id = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), address(this), s_storage.nonce))
        );
        _createUpkeep(id, target, gasLimit, admin, useTreasury, singleExec, checkData, false);

        s_storage.nonce++;
        emit UpkeepRegistered(id, msg.sender, admin, gasLimit);
        return id;
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function cancelUpkeep(uint256 id) external {
        Upkeep memory upkeep = s_upkeep[id];
        bool canceled = upkeep.maxValidBlocknumber != UINT32_MAX;
        bool isOwner = msg.sender == owner();

        if (canceled && !(isOwner && upkeep.maxValidBlocknumber > block.number))
            revert CannotCancel();
        if (!isOwner && msg.sender != upkeep.admin) revert OnlyCallableByOwnerOrAdmin();

        uint256 height = block.number;
        if (!isOwner) {
            height = height + CANCELLATION_DELAY;
        }
        s_upkeep[id].maxValidBlocknumber = uint32(height);
        s_upkeepIDs.remove(id);

        emit UpkeepCanceled(id, uint64(height));
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function setUpkeepGasLimit(uint256 id, uint32 gasLimit) external {
        if (gasLimit < PERFORM_GAS_MIN || gasLimit > s_storage.maxPerformGas)
            revert GasLimitOutsideRange();
        Upkeep memory upkeep = s_upkeep[id];
        if (upkeep.maxValidBlocknumber != UINT32_MAX) revert UpkeepCancelled();
        if (upkeep.admin != msg.sender) revert OnlyCallableByAdmin();

        s_upkeep[id].executeGas = gasLimit;

        emit UpkeepGasLimitSet(id, gasLimit);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function withdrawPayment(address from, address to) external {
        if (to == ZERO_ADDRESS) revert InvalidRecipient();
        KeeperInfo memory keeper = s_keeperInfo[from];
        if (keeper.payee != msg.sender) revert OnlyCallableByPayee();

        s_keeperInfo[from].balance = 0;
        s_expectedBalance = s_expectedBalance - keeper.balance;
        emit PaymentWithdrawn(from, keeper.balance, to, msg.sender);

        _transfer(payable(to), keeper.balance);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function transferPayeeship(address keeper, address proposed) external {
        if (s_keeperInfo[keeper].payee != msg.sender) revert OnlyCallableByPayee();
        if (proposed == msg.sender) revert ValueNotChanged();

        if (s_proposedPayee[keeper] != proposed) {
            s_proposedPayee[keeper] = proposed;
            emit PayeeshipTransferRequested(keeper, msg.sender, proposed);
        }
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function acceptPayeeship(address keeper) external {
        if (s_proposedPayee[keeper] != msg.sender) revert OnlyCallableByProposedPayee();
        address past = s_keeperInfo[keeper].payee;
        s_keeperInfo[keeper].payee = msg.sender;
        s_proposedPayee[keeper] = ZERO_ADDRESS;

        emit PayeeshipTransferred(keeper, past, msg.sender);
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function transferUpkeepAdmin(uint256 id, address proposed) external {
        Upkeep memory upkeep = s_upkeep[id];
        requireAdminAndNotCancelled(upkeep);
        if (proposed == msg.sender) revert ValueNotChanged();
        if (proposed == ZERO_ADDRESS) revert InvalidRecipient();

        if (s_proposedAdmin[id] != proposed) {
            s_proposedAdmin[id] = proposed;
            emit UpkeepAdminTransferRequested(id, msg.sender, proposed);
        }
    }

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function acceptUpkeepAdmin(uint256 id) external {
        Upkeep memory upkeep = s_upkeep[id];
        if (upkeep.maxValidBlocknumber != UINT32_MAX) revert UpkeepCancelled();
        if (s_proposedAdmin[id] != msg.sender) revert OnlyCallableByProposedAdmin();
        address past = upkeep.admin;
        s_upkeep[id].admin = msg.sender;
        s_proposedAdmin[id] = ZERO_ADDRESS;

        emit UpkeepAdminTransferred(id, past, msg.sender);
    }

    /**
     * @notice creates a new upkeep with the given fields
     * @param target address to perform upkeep on
     * @param gasLimit amount of gas to provide the target contract when
     * performing upkeep
     * @param admin address to cancel upkeep and withdraw remaining funds
     * @param singleExec the flag which task cancels itself after 1 execution
     * @param checkData data passed to the contract when checking for upkeep
     * @param paused if this upkeep is paused
     */
    function _createUpkeep(
        uint256 id,
        address target,
        uint32 gasLimit,
        address admin,
        bool useTreasury,
        bool singleExec,
        bytes memory checkData,
        bool paused
    ) internal whenNotPaused {
        if (!target.isContract()) revert NotAContract();

        if (gasLimit < PERFORM_GAS_MIN || gasLimit > s_storage.maxPerformGas)
            revert GasLimitOutsideRange();

        s_upkeep[id] = Upkeep({
            target: target,
            executeGas: gasLimit,
            admin: admin,
            maxValidBlocknumber: UINT32_MAX,
            lastKeeper: ZERO_ADDRESS,
            amountSpent: 0,
            useTreasury: useTreasury,
            singleExec: singleExec,
            paused: paused
        });
        s_checkData[id] = checkData;
        s_upkeepIDs.add(id);
    }

    // solhint-disable private-vars-leading-underscore
    // solhint-disable func-visibility
    function _transfer(address payable _to, uint256 _amount) private {
        (bool success, ) = _to.call{value: _amount}("");
        if (!success) revert EthTransferFailed();
    }
}
