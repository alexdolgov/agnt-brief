pragma solidity ^0.8.0;

// SPDX-License-Identifier: MIT OR Apache-2.0



import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./zksync/ReentrancyGuard.sol";
import "./zksync/Events.sol";
import "./Storage.sol";
import "./zksync/Bytes.sol";
import "./zksync/Utils.sol";

/// @title ZkLink periphery contract
/// @author zk.link
contract ZkLinkPeriphery is ReentrancyGuard, Storage, Events {
    using SafeERC20 for IERC20;
    // =================User interface=================

    /// @notice Checks if Exodus mode must be entered. If true - enters exodus mode and emits ExodusMode event.
    /// @dev Exodus mode must be entered in case of current ethereum block number is higher than the oldest
    /// of existed priority requests expiration block number.
    function activateExodusMode() external active nonReentrant {
        bool trigger = block.number >= priorityRequests[firstPriorityRequestId].expirationBlock &&
        priorityRequests[firstPriorityRequestId].expirationBlock != 0;

        if (trigger) {
            exodusMode = true;
            emit ExodusMode();
        }
    }


    /// @notice Accrues users balances from deposit priority requests in Exodus mode
    /// @dev WARNING: Only for Exodus mode
    /// Canceling may take several separate transactions to be completed
    /// @param _n number of requests to process
    /// @param _depositsPubdata deposit details
    function cancelOutstandingDepositsForExodusMode(uint64 _n, bytes[] calldata _depositsPubdata) external notActive nonReentrant {
        // ===Checks===
        uint64 toProcess = Utils.minU64(totalOpenPriorityRequests, _n);
        require(toProcess > 0, "A0");

        // ===Effects===
        uint64 currentDepositIdx = 0;
        // overflow is impossible, firstPriorityRequestId >= 0 and toProcess > 0
        uint64 lastPriorityRequestId = firstPriorityRequestId + toProcess - 1;
        for (uint64 id = firstPriorityRequestId; id <= lastPriorityRequestId; ++id) {
            Operations.PriorityOperation memory pr = priorityRequests[id];
            if (pr.opType == Operations.OpType.Deposit) {
                bytes memory depositPubdata = _depositsPubdata[currentDepositIdx];
                require(Utils.hashBytesWithSizeToBytes20(depositPubdata, Operations.DEPOSIT_CHECK_BYTES) == pr.hashedPubData, "A1");
                ++currentDepositIdx;

                Operations.Deposit memory op = Operations.readDepositPubdata(depositPubdata);
                // amount of Deposit has already improve decimals
                increaseBalanceToWithdraw(op.owner, op.tokenId, op.amount);
            }
            // after return back deposited token to user, delete the priorityRequest to avoid redundant cancel
            // other priority requests(ie. FullExit) are also be deleted because they are no used anymore
            // and we can get gas reward for free these slots
            delete priorityRequests[id];
        }
        // overflow is impossible
        firstPriorityRequestId += toProcess;
        totalOpenPriorityRequests -= toProcess;
    }

    /// @notice Set data for changing pubkey hash using onchain authorization.
    ///         Transaction author (msg.sender) should be L2 account address
    /// New pubkey hash can be reset, to do that user should send two transactions:
    ///         1) First `setAuthPubkeyHash` transaction for already used `_nonce` will set timer.
    ///         2) After `AUTH_FACT_RESET_TIMELOCK` time is passed second `setAuthPubkeyHash` transaction will reset pubkey hash for `_nonce`.
    /// @param _pubkeyHash New pubkey hash
    /// @param _nonce Nonce of the change pubkey L2 transaction
    function setAuthPubkeyHash(bytes calldata _pubkeyHash, uint32 _nonce) external active nonReentrant {
        require(_pubkeyHash.length == PUBKEY_HASH_BYTES, "B0"); // PubKeyHash should be 20 bytes.
        if (authFacts[msg.sender][_nonce] == bytes32(0)) {
            authFacts[msg.sender][_nonce] = keccak256(_pubkeyHash);
            emit FactAuth(msg.sender, _nonce, _pubkeyHash);
        } else {
            uint256 currentResetTimer = authFactsResetTimer[msg.sender][_nonce];
            if (currentResetTimer == 0) {
                authFactsResetTimer[msg.sender][_nonce] = block.timestamp;
                emit FactAuthResetTime(msg.sender, _nonce, block.timestamp);
            } else {
                require(block.timestamp - currentResetTimer >= AUTH_FACT_RESET_TIMELOCK, "B1"); // too early to reset auth
                authFactsResetTimer[msg.sender][_nonce] = 0;
                authFacts[msg.sender][_nonce] = keccak256(_pubkeyHash);
                emit FactAuth(msg.sender, _nonce, _pubkeyHash);
            }
        }
    }

    /// @notice  Withdraws tokens from zkLink contract to the owner
    /// @param _owner Address of the tokens owner
    /// @param _tokenId Token id
    /// @param _amount The actual withdrawn amount
    function withdrawPendingBalance(address payable _owner, uint16 _tokenId, uint128 _amount) external nonReentrant {
        // ===Checks===
        // token MUST be registered to ZkLink
        RegisteredToken storage rt = tokens[_tokenId];
        require(rt.registered, "b0");

        // ===Effects===
        // Set the available amount to withdraw
        // balance need to be recovery decimals
        bytes32 l2Owner = extendAddress(_owner);
        uint128 l2Balance = pendingBalances[l2Owner][_tokenId];
        uint128 l2Amount = improveDecimals(_amount, rt.decimals);
        pendingBalances[l2Owner][_tokenId] = l2Balance - l2Amount;

        // ===Interactions===
        _withdrawTo(_owner, rt.tokenAddress, _amount, new bytes(0));
        emit Withdrawal(_tokenId, _amount);
    }

    /// @notice  Withdraws tokens from zkLink contract to the target contract
    /// @param _owner Address of the tokens owner
    /// @param _tokenAddress Token address
    /// @param _amount The actual withdrawn amount
    /// @param _data The target contract address and call data
    /// @param _accountIdOfNonce Account that supply nonce
    /// @param _subAccountIdOfNonce SubAccount that supply nonce
    /// @param _nonce SubAccount nonce
    /// @param _callTarget True when call target or withdraw pending balance to owner
    function withdrawPendingBalanceWithCall(address payable _owner, address _tokenAddress, uint128 _amount, bytes memory _data, uint32 _accountIdOfNonce, uint8 _subAccountIdOfNonce, uint32 _nonce, bool _callTarget) external nonReentrant {
        // ===Checks===
        // pending withdraw record MUST be exist
        bytes32 dataHash = keccak256(_data);
        bytes32 withdrawWithDataHash = getWithdrawWithDataHash(_owner, _tokenAddress, _amount, dataHash, _accountIdOfNonce, _subAccountIdOfNonce, _nonce);
        require(pendingWithdrawWithCalls[withdrawWithDataHash], "z0");

        // ===Effects===
        pendingWithdrawWithCalls[withdrawWithDataHash] = false;

        if (_callTarget) {
            // decode data
            (address targetContract, bytes memory callData) = abi.decode(_data, (address, bytes));
            _withdrawTo(payable(targetContract), _tokenAddress, _amount, callData);
        } else {
            _withdrawTo(_owner, _tokenAddress, _amount, new bytes(0));
        }
        emit WithdrawalCall(withdrawWithDataHash);
    }

    function _withdrawTo(address payable _to,  address _tokenAddress, uint128 _amount, bytes memory _callData) internal {
        // ===Interactions===
        if (_tokenAddress == ETH_ADDRESS) {
            // solhint-disable-next-line  avoid-low-level-calls
            (bool success, ) = _to.call{value: _amount}(_callData);
            require(success, "b1");
        } else {
            IERC20(_tokenAddress).safeTransfer(_to, _amount);
            if (_callData.length > 0) {
                // solhint-disable-next-line  avoid-low-level-calls
                (bool success, ) = _to.call(_callData);
                require(success, "b2");
            }
        }
    }

    /// @notice Returns amount of tokens that can be withdrawn by `address` from zkLink contract
    /// @param _address Address of the tokens owner
    /// @param _tokenId Token id
    /// @return The pending balance(without recovery decimals) can be withdrawn
    function getPendingBalance(bytes32 _address, uint16 _tokenId) external view returns (uint128) {
        return pendingBalances[_address][_tokenId];
    }
    // =======================Governance interface======================

    /// @notice Change current governor
    /// @param _newGovernor Address of the new governor
    function changeGovernor(address _newGovernor) external onlyGovernor {
        require(_newGovernor != address(0), "H");
        if (networkGovernor != _newGovernor) {
            networkGovernor = _newGovernor;
            emit NewGovernor(_newGovernor);
        }
    }

    /// @notice Add token to the list of networks tokens
    /// @param _tokenId Token id
    /// @param _tokenAddress Token address
    /// @param _decimals Token decimals of layer one
    function addToken(uint16 _tokenId, address _tokenAddress, uint8 _decimals) external onlyGovernor {
        // token id MUST be in a valid range
        require(_tokenId > 0 && _tokenId <= MAX_AMOUNT_OF_REGISTERED_TOKENS, "I0");
        // token MUST be not zero address
        require(_tokenAddress != address(0), "I1");
        // token decimals of layer one MUST not be larger than decimals defined in layer two
        require(_decimals <= TOKEN_DECIMALS_OF_LAYER2, "I2");

        RegisteredToken memory rt = tokens[_tokenId];
        rt.registered = true;
        rt.tokenAddress = _tokenAddress;
        rt.decimals = _decimals;
        tokens[_tokenId] = rt;
        tokenIds[_tokenAddress] = _tokenId;
        emit NewToken(_tokenId, _tokenAddress, _decimals);
    }

    /// @notice Pause token deposits for the given token
    /// @param _tokenId Token id
    /// @param _tokenPaused Token paused status
    function setTokenPaused(uint16 _tokenId, bool _tokenPaused) external onlyGovernor {
        RegisteredToken storage rt = tokens[_tokenId];
        require(rt.registered, "K");

        if (rt.paused != _tokenPaused) {
            rt.paused = _tokenPaused;
            emit TokenPausedUpdate(_tokenId, _tokenPaused);
        }
    }

    /// @notice Change validator status (active or not active)
    /// @param _validator Validator address
    /// @param _active Active flag
    function setValidator(address _validator, bool _active) external onlyGovernor {
        if (validators[_validator] != _active) {
            validators[_validator] = _active;
            emit ValidatorStatusUpdate(_validator, _active);
        }
    }

    /// @notice Set sync service address
    /// @param _chainId zkLink chain id
    /// @param _syncService new sync service address
    function setSyncService(uint8 _chainId, ISyncService _syncService) external onlyGovernor {
        ISyncService oldSyncService = chainSyncServiceMap[_chainId];
        if (address(oldSyncService) != address(0)) {
            syncServiceMap[address(oldSyncService)] = false;
        }
        chainSyncServiceMap[_chainId] = _syncService;
        syncServiceMap[address(_syncService)] = true;
        emit SetSyncService(_chainId, address(_syncService));
    }

    /// @notice Set gateway address
    /// @param _gateway gateway address
    function setGateway(IL2Gateway _gateway) external onlyGovernor {
        gateway = _gateway;
        emit SetGateway(address(_gateway));
    }

    // =======================Block interface======================


    function revertBlocks(StoredBlockInfo memory _latestCommittedBlock, StoredBlockInfo[] memory _blocksToRevert) external onlyValidator nonReentrant {
        uint32 blocksCommitted = totalBlocksCommitted;
        uint32 blocksToRevert = Utils.minU32(SafeCast.toUint32(_blocksToRevert.length), blocksCommitted - totalBlocksExecuted);
        uint64 revertedPriorityRequests = 0;
        for (uint32 i = 0; i < blocksToRevert; ++i) {
            StoredBlockInfo memory storedBlockInfo = _blocksToRevert[i];
            require(storedBlockHashes[blocksCommitted] == hashStoredBlockInfo(storedBlockInfo), "c"); // incorrect stored block info

            delete storedBlockHashes[blocksCommitted];

            --blocksCommitted;
            revertedPriorityRequests = revertedPriorityRequests + storedBlockInfo.priorityOperations;
        }
        require(storedBlockHashes[blocksCommitted] == hashStoredBlockInfo(_latestCommittedBlock), "c1");

        totalBlocksCommitted = blocksCommitted;
        totalCommittedPriorityRequests = totalCommittedPriorityRequests - revertedPriorityRequests;
        if (_latestCommittedBlock.blockNumber < totalBlocksSynchronized) {
            totalBlocksSynchronized = _latestCommittedBlock.blockNumber;
        }

        emit BlocksRevert(totalBlocksExecuted, blocksCommitted);
    }

    // =======================Cross chain block synchronization======================

    /// @notice Estimate send sync hash fee
    /// @param syncHash the sync hash of stored block
    function estimateSendSyncHashFee(bytes32 syncHash) external view returns (uint nativeFee) {
        ISyncService syncService = chainSyncServiceMap[MASTER_CHAIN_ID];
        return syncService.estimateSendSyncHashFee(syncHash);
    }

    /// @notice Send sync hash to master chain
    function sendSyncHash(StoredBlockInfo memory _block) external onlyValidator payable {
        require(_block.blockNumber > totalBlocksSynchronized, "j0");
        require(hashStoredBlockInfo(_block) == storedBlockHashes[_block.blockSequence], "j1");

        ISyncService syncService = chainSyncServiceMap[MASTER_CHAIN_ID];
        uint256 leftMsgValue = msg.value;
        uint256 nativeFee = syncService.estimateSendSyncHashFee(_block.syncHash);
        syncService.sendSyncHash{value:nativeFee}(_block.syncHash);

        leftMsgValue -= nativeFee;
        if (leftMsgValue > 0) {
            // solhint-disable-next-line avoid-low-level-calls
            (bool success, ) = msg.sender.call{value: leftMsgValue}("");
            require(success, "j2");
        }
        emit SendSlaverSyncHash(_block.syncHash);
    }

    /// @notice Receive block confirmation from master chain
    function receiveBlockConfirmation(uint32 blockNumber) external onlySyncService {
        if (blockNumber > totalBlocksSynchronized) {
            totalBlocksSynchronized = blockNumber;
            emit BlockSynced(blockNumber);
        }
    }


    // =======================Withdraw to L1======================
    /// @notice Estimate the fee to withdraw token to L1 for user by gateway
    function estimateWithdrawToL1Fee(address owner, address token, uint128 amount, uint16 fastWithdrawFeeRate, uint32 accountIdOfNonce, uint8 subAccountIdOfNonce, uint32 nonce) public view returns (uint256 nativeFee) {
        if (token == ETH_ADDRESS) {
            nativeFee = gateway.estimateWithdrawETHFee(owner, amount, accountIdOfNonce, subAccountIdOfNonce, nonce, fastWithdrawFeeRate);
        } else {
            nativeFee = gateway.estimateWithdrawERC20Fee(owner, token, amount, accountIdOfNonce, subAccountIdOfNonce, nonce, fastWithdrawFeeRate);
        }
    }

    /// @notice Withdraw token to L1 for user by gateway
    /// @param owner User receive token on L1
    /// @param token Token address
    /// @param amount The amount(recovered decimals) of withdraw operation
    /// @param fastWithdrawFeeRate Fast withdraw fee rate taken by acceptor
    /// @param accountIdOfNonce Account that supply nonce, may be different from accountId
    /// @param subAccountIdOfNonce SubAccount that supply nonce
    /// @param nonce SubAccount nonce, used to produce unique accept info
    function withdrawToL1(address owner, address token, uint128 amount, uint16 fastWithdrawFeeRate, uint32 accountIdOfNonce, uint8 subAccountIdOfNonce, uint32 nonce) external payable nonReentrant {
        // ===Checks===
        // ensure withdraw data is not executed
        bytes32 withdrawHash = getWithdrawHash(accountIdOfNonce, subAccountIdOfNonce, nonce, owner, token, amount, fastWithdrawFeeRate);
        require(pendingL1Withdraws[withdrawHash] == true, "M0");

        // ensure supply fee
        uint256 fee = estimateWithdrawToL1Fee(owner, token, amount, fastWithdrawFeeRate, accountIdOfNonce, subAccountIdOfNonce, nonce);
        require(msg.value >= fee, "M1");

        // ===Effects===
        pendingL1Withdraws[withdrawHash] = false;

        // ===Interactions===
        // transfer token to gateway
        // send msg.value as bridge fee to gateway
        if (token == ETH_ADDRESS) {
            gateway.withdrawETH{value: fee + amount}(owner, amount, accountIdOfNonce, subAccountIdOfNonce, nonce, fastWithdrawFeeRate);
        } else {
            IERC20(token).safeApprove(address(gateway), amount);
            gateway.withdrawERC20{value: fee}(owner, token, amount, accountIdOfNonce, subAccountIdOfNonce, nonce, fastWithdrawFeeRate);
        }

        uint256 leftMsgValue = msg.value - fee;
        if (leftMsgValue > 0) {
            // solhint-disable-next-line avoid-low-level-calls
            (bool success, ) = msg.sender.call{value: leftMsgValue}("");
            require(success, "M2");
        }

        emit WithdrawalL1(withdrawHash);
    }
}
