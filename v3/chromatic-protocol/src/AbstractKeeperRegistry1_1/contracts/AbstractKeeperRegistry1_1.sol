// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/proxy/Proxy.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "./KeeperRegistryBase.sol";
import "./KeeperRegistryBase1_1.sol";
import "./KeeperRegistryLogic1_1.sol";
import "./interfaces/IAutomation1_1.sol";
import {IAutomationRegistry1_1, ExtraData} from "./interfaces/IAutomationRegistry1_1.sol";
import "./interfaces/ITypeAndVersion.sol";
import "./UpkeepTreasury.sol";

/**
 * @notice Registry for adding work for Mate2 Keepers to perform on client
 * contracts. Clients must support the Upkeep interface.
 */
abstract contract AbstractKeeperRegistry1_1 is
    KeeperRegistryBase,
    KeeperRegistryBase1_1,
    Proxy,
    ITypeAndVersion,
    IAutomationRegistry1_1
{
    using Address for address;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    address public immutable KEEPER_REGISTRY_LOGIC;

    /**
     * @notice versions:
     */
    string public constant override typeAndVersion = "KeeperRegistry 1.1.0";

    /**
     * @param keeperRegistryLogic the address of keeper registry logic
     * @param config registry config settings
     */
    constructor(
        KeeperRegistryLogic1_1 keeperRegistryLogic,
        Config memory config
    ) KeeperRegistryBase(keeperRegistryLogic.REGISTRY_GAS_OVERHEAD()) {
        KEEPER_REGISTRY_LOGIC = address(keeperRegistryLogic);

        setConfig(config);
    }

    // ACTIONS

    /**
     * @notice adds a new upkeep
     * @param target address to perform upkeep on
     * @param gasLimit amount of gas to provide the target contract when
     * performing upkeep
     * @param admin address to cancel upkeep and withdraw remaining funds
     * @param singleExec the flag which task cancels itself after 1 execution
     * @param checkData data passed to the contract when checking for upkeep
     */
    function registerUpkeep(
        address target,
        uint32 gasLimit,
        address admin,
        bool useTreasury,
        bool singleExec,
        bytes calldata checkData,
        ExtraModule extraModule,
        bytes calldata extraParam
    ) external override returns (uint256 id) {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice simulated by keepers via eth_call to see if the upkeep needs to be
     * performed. If upkeep is needed, the call then simulates performUpkeep
     * to make sure it succeeds. Finally, it returns the success status along with
     * payment information and the perform data payload.
     * @param id identifier of the upkeep to check
     * @param from the address to simulate performing the upkeep from
     * @param extraData the extra data passed from keeper
     */
    function checkUpkeep(
        uint256 id,
        address from,
        bytes calldata extraData
    )
        external
        view
        override
        returns (bytes memory performData, uint256 maxPayment, uint256 gasLimit)
    {
        Upkeep memory upkeep = s_upkeep[id];

        bytes memory callData = abi.encodeWithSelector(
            IAutomation1_1.checkUpkeep.selector,
            s_checkData[id],
            extraData
        );
        (bool success, bytes memory result) = upkeep.target.staticcall(callData);

        if (!success) revert TargetCheckReverted(result);

        (success, performData) = abi.decode(result, (bool, bytes));
        if (!success) revert UpkeepNotNeeded();

        PerformParams memory params = _generatePerformParams(from, id, performData, false);
        _prePerformUpkeep(upkeep, params.from);
        if (upkeep.useTreasury) {
            uint256 treasuryUserBalance = IUpkeepTreasury(s_upkeepTreasury).userBalance(
                upkeep.admin
            );
            if (treasuryUserBalance < params.maxPayment) revert InsufficientFunds();
        }

        return (performData, params.maxPayment, params.gasLimit);
    }

    /**
     * @notice executes the upkeep with the perform data returned from
     * checkUpkeep, validates the keeper's permissions, and pays the keeper.
     * @param id identifier of the upkeep to execute the data with.
     * @param performData calldata parameter to be passed to the target upkeep.
     */
    function performUpkeep(
        uint256 id,
        uint256 estimatedGas,
        bytes calldata performData
    ) external override whenNotPaused returns (bool success) {
        return
            _performUpkeepWithParams(
                estimatedGas,
                _generatePerformParams(msg.sender, id, performData, true)
            );
    }

    /**
     * @notice prevent an upkeep from being performed in the future
     * @param id upkeep to be canceled
     */
    function cancelUpkeep(uint256 id) external override {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice pause an upkeep
     * @param id upkeep to be paused
     */
    function pauseUpkeep(uint256 id) external override {
        Upkeep memory upkeep = s_upkeep[id];
        requireAdminAndNotCancelled(upkeep);
        if (upkeep.paused) revert OnlyUnpausedUpkeep();
        s_upkeep[id].paused = true;
        s_upkeepIDs.remove(id);
        emit UpkeepPaused(id);
    }

    /**
     * @notice unpause an upkeep
     * @param id upkeep to be resumed
     */
    function unpauseUpkeep(uint256 id) external override {
        Upkeep memory upkeep = s_upkeep[id];
        requireAdminAndNotCancelled(upkeep);
        if (!upkeep.paused) revert OnlyPausedUpkeep();
        s_upkeep[id].paused = false;
        s_upkeepIDs.add(id);
        emit UpkeepUnpaused(id);
    }

    /**
     * @notice update the check data of an upkeep
     * @param id the id of the upkeep whose check data needs to be updated
     * @param newCheckData the new check data
     */
    function updateCheckData(uint256 id, bytes calldata newCheckData) external override {
        Upkeep memory upkeep = s_upkeep[id];
        requireAdminAndNotCancelled(upkeep);
        s_checkData[id] = newCheckData;
        emit UpkeepCheckDataUpdated(id, newCheckData);
    }

    /**
     * @notice allows the admin of an upkeep to modify gas limit
     * @param id upkeep to be change the gas limit for
     * @param gasLimit new gas limit for the upkeep
     */
    function setUpkeepGasLimit(uint256 id, uint32 gasLimit) external override {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice recovers funds improperly transferred to the registry
     * @dev In principle this function’s execution cost could exceed block
     * gas limit. However, in our anticipated deployment, the number of upkeeps and
     * keepers will be low enough to avoid this problem.
     */
    function recoverFunds() external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice withdraws a keeper's payment, callable only by the keeper's payee
     * @param from keeper address
     * @param to address to send the payment to
     */
    function withdrawPayment(address from, address to) external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice proposes the safe transfer of a keeper's payee to another address
     * @param keeper address of the keeper to transfer payee role
     * @param proposed address to nominate for next payeeship
     */
    function transferPayeeship(address keeper, address proposed) external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice accepts the safe transfer of payee role for a keeper
     * @param keeper address to accept the payee role for
     */
    function acceptPayeeship(address keeper) external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice proposes the safe transfer of an upkeep's admin role to another address
     * @param id the upkeep id to transfer admin
     * @param proposed address to nominate for the new upkeep admin
     */
    function transferUpkeepAdmin(uint256 id, address proposed) external override {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice accepts the safe transfer of admin role for an upkeep
     * @param id the upkeep id
     */
    function acceptUpkeepAdmin(uint256 id) external override {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice signals to keepers that they should not perform upkeeps until the
     * contract has been unpaused
     */
    function pause() external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice signals to keepers that they can perform upkeeps once again after
     * having been paused
     */
    function unpause() external {
        // Executed through logic contract
        _fallback();
    }

    // SETTERS

    /**
     * @notice updates the configuration of the registry
     * @param config registry config fields
     */
    function setConfig(Config memory config) public onlyOwner {
        if (config.maxPerformGas < s_storage.maxPerformGas) revert GasLimitCanOnlyIncrease();
        s_storage = Storage({
            paymentPremiumPPB: config.paymentPremiumPPB,
            blockCountPerTurn: config.blockCountPerTurn,
            gasCeilingMultiplier: config.gasCeilingMultiplier,
            maxPerformGas: config.maxPerformGas,
            nonce: s_storage.nonce
        });
        s_fallbackGasPrice = config.fallbackGasPrice;
        emit ConfigSet(config);
    }

    /**
     * @notice update the list of keepers allowed to perform upkeep
     * @param keepers list of addresses allowed to perform upkeep
     * @param payees addresses corresponding to keepers who are allowed to
     * move payments which have been accrued
     */
    function setKeepers(address[] calldata keepers, address[] calldata payees) external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice update the upkeep treasury address
     * @param upkeepTreasury upkeep treasury address
     */
    function setUpkeepTreasury(address upkeepTreasury) external {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice Add new registrar that can call registerUpkeep
     * @param registrar New registrar to add
     */
    function addWhitelistedRegistrar(address registrar) external onlyOwner {
        // Executed through logic contract
        _fallback();
    }

    /**
     * @notice Remove old registrar that can call uregisterUpkeep
     * @param registrar Old registrar to remove
     */
    function removeWhitelistedRegistrar(address registrar) external onlyOwner {
        // Executed through logic contract
        _fallback();
    }

    // GETTERS

    /**
     * @notice read all of the details about an upkeep
     */
    function getUpkeep(
        uint256 id
    )
        external
        view
        override
        returns (
            address target,
            uint32 executeGas,
            bytes memory checkData,
            ExtraData memory extraData,
            address lastKeeper,
            address admin,
            uint64 maxValidBlocknumber,
            uint256 amountSpent,
            bool[3] memory flags
        )
    {
        Upkeep memory reg = s_upkeep[id];
        return (
            reg.target,
            reg.executeGas,
            s_checkData[id],
            getExtraData(id),
            reg.lastKeeper,
            reg.admin,
            reg.maxValidBlocknumber,
            reg.amountSpent,
            [reg.useTreasury, reg.singleExec, reg.paused]
        );
    }

    function getExtraData(uint256 id) internal view returns (ExtraData memory) {
        return ExtraData(s_extraModule[id], s_extraParam[id]);
    }

    /**
     * @notice retrieve active upkeep IDs. Active upkeep is defined as an upkeep which is not paused and not canceled.
     * @param startIndex starting index in list
     * @param maxCount max count to retrieve (0 = unlimited)
     * @dev the order of IDs in the list is **not guaranteed**, therefore, if making successive calls, one
     * should consider keeping the blockheight constant to ensure a holistic picture of the contract state
     */
    function getActiveUpkeepIDs(
        uint256 startIndex,
        uint256 maxCount
    ) external view override returns (uint256[] memory) {
        uint256 maxIdx = s_upkeepIDs.length();
        if (startIndex >= maxIdx) revert IndexOutOfRange();
        if (maxCount == 0) {
            maxCount = maxIdx - startIndex;
        }
        uint256[] memory ids = new uint256[](maxCount);
        for (uint256 idx = 0; idx < maxCount; idx++) {
            ids[idx] = s_upkeepIDs.at(startIndex + idx);
        }
        return ids;
    }

    /**
     * @notice read the current info about any keeper address
     */
    function getKeeperInfo(
        address query
    ) external view override returns (address payee, bool active, uint256 balance) {
        KeeperInfo memory keeper = s_keeperInfo[query];
        return (keeper.payee, keeper.active, keeper.balance);
    }

    /**
     * @notice read the current upkeep treasury address
     */
    function getUpkeepTreasury() external view override returns (address) {
        return s_upkeepTreasury;
    }

    /**
     * @notice read the current whitelisted registrar addresses
     */
    function getWhitelistedRegistrars() external view returns (address[] memory) {
        return s_whitelistedRegistrars.values();
    }

    /**
     * @notice read the current state of the registry
     */
    function getState()
        external
        view
        override
        returns (
            State memory state,
            Config memory config,
            address upkeepTreasury,
            address[] memory keepers
        )
    {
        Storage memory store = s_storage;
        state.nonce = store.nonce;
        state.expectedBalance = s_expectedBalance;
        state.numUpkeeps = s_upkeepIDs.length();
        config.paymentPremiumPPB = store.paymentPremiumPPB;
        config.blockCountPerTurn = store.blockCountPerTurn;
        config.gasCeilingMultiplier = store.gasCeilingMultiplier;
        config.maxPerformGas = store.maxPerformGas;
        config.fallbackGasPrice = s_fallbackGasPrice;
        return (state, config, s_upkeepTreasury, s_keeperList);
    }

    /**
     * @notice calculates the minimum balance required for an upkeep to remain eligible
     * @param id the upkeep id to calculate minimum balance for
     */
    function getMinBalanceForUpkeep(uint256 id) external view returns (uint256 minBalance) {
        return getMaxPaymentForGas(s_upkeep[id].executeGas);
    }

    /**
     * @notice calculates the maximum payment for a given gas limit
     * @param gasLimit the gas to calculate payment for
     */
    function getMaxPaymentForGas(uint256 gasLimit) public view returns (uint256 maxPayment) {
        return _calculatePaymentAmount(gasLimit, false);
    }

    /**
     * @dev generates a PerformParams struct for use in _performUpkeepWithParams()
     */
    function _generatePerformParams(
        address from,
        uint256 id,
        bytes memory performData,
        bool isExecution
    ) internal view returns (PerformParams memory) {
        uint256 gasLimit = s_upkeep[id].executeGas;
        uint256 maxPayment = _calculatePaymentAmount(gasLimit, isExecution);

        return
            PerformParams({
                from: from,
                id: id,
                performData: performData,
                maxPayment: maxPayment,
                gasLimit: gasLimit
            });
    }

    /**
     * @dev calculates fee for gas spent plus a configure premium percentage
     * @param gasAmount the amount of gas used
     * @param isExecution if this is triggered by a perform upkeep function
     */
    function _calculatePaymentAmount(
        uint256 gasAmount,
        bool isExecution
    ) internal view virtual returns (uint256 payment);

    receive() external payable override {}

    /**
     * @dev This is the address to which proxy functions are delegated to
     */
    function _implementation() internal view override returns (address) {
        return KEEPER_REGISTRY_LOGIC;
    }

    /**
     * @dev calls target address with exactly gasAmount gas and data as calldata
     * or reverts if at least gasAmount gas is not available
     */
    function _callWithExactGas(
        uint256 gasAmount,
        address target,
        bytes memory data
    ) private returns (bool success) {
        assembly {
            let g := gas()
            // Compute g -= PERFORM_GAS_CUSHION and check for underflow
            if lt(g, PERFORM_GAS_CUSHION) {
                revert(0, 0)
            }
            // g := sub(g, PERFORM_GAS_CUSHION)
            // if g - g//64 <= gasAmount, revert
            // (we subtract g//64 because of EIP-150)
            // if iszero(gt(sub(g, div(g, 64)), gasAmount)) {
            //     revert(0, 0)
            // }
            // solidity calls check that a contract actually exists at the destination, so we do the same
            if iszero(extcodesize(target)) {
                revert(0, 0)
            }
            // call and return whether we succeeded. ignore return data
            success := call(gasAmount, target, 0, add(data, 0x20), mload(data), 0, 0)
        }
        return success;
    }

    uint256 private _performUpkeepFee = 0;

    /**
     * @dev calls the Upkeep target with the performData param passed in by the
     * keeper and the exact gas required by the Upkeep
     */
    function _performUpkeepWithParams(
        uint256 estimatedGas,
        PerformParams memory params
    ) private nonReentrant returns (bool success) {
        uint256 id = params.id;
        Upkeep memory upkeep = s_upkeep[id];

        if (upkeep.maxValidBlocknumber <= block.number) revert UpkeepCancelled();

        _prePerformUpkeep(upkeep, params.from);

        uint256 payment = _calculatePaymentAmount(estimatedGas, true);
        if (upkeep.useTreasury) {
            uint256 treasuryUserBalance = IUpkeepTreasury(s_upkeepTreasury).userBalance(
                upkeep.admin
            );
            if (treasuryUserBalance < payment) revert InsufficientFunds();
        } else {
            _performUpkeepFee = payment;
        }

        uint256 beforeBalance = address(this).balance;

        bytes memory callData = abi.encodeWithSelector(PERFORM_SELECTOR, params.performData);
        success = _callWithExactGas(params.gasLimit, upkeep.target, callData);

        if (upkeep.useTreasury) {
            IUpkeepTreasury(s_upkeepTreasury).useFunds(payment, upkeep.admin);
        } else {
            delete _performUpkeepFee;
        }

        uint256 afterBalance = address(this).balance;
        if (afterBalance - beforeBalance < payment) revert NotEnoughFeePaid();
        s_expectedBalance += payment;

        if (success && upkeep.singleExec) {
            uint256 height = block.number;
            s_upkeep[id].maxValidBlocknumber = uint32(height);
            s_upkeepIDs.remove(id);
            emit UpkeepCanceled(id, uint64(height));
        }

        s_upkeep[id].amountSpent = s_upkeep[id].amountSpent + payment;
        s_upkeep[id].lastKeeper = params.from;
        s_keeperInfo[params.from].balance = s_keeperInfo[params.from].balance + payment;
        emit UpkeepPerformed(id, success, params.from, payment, params.performData);
        return success;
    }

    function getPerformUpkeepFee() external view returns (uint256 fee) {
        fee = _performUpkeepFee;
    }
}
