// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

error Unauthorized();

error ZeroInput();

error InvalidAsset(uint256 assetId);
error AssetAlreadyRegistered(uint256 assetId);
error AssetNotRegistered(uint256 assetId);
error TokenNotDeployed();
error TokenAlreadyDeployed();
error InvalidWallet();

error AmountNotRound();
error AmountTooHigh();
error AmountTooLow();
error FeeAmountTooHigh();

error ReclaimInProgress();
error NothingToReclaim();
error NothingToWithdraw();
error ReclaimTimeout();

error XChainNotMainChain();
error XChainRemoteChainNotMapped();
error XChainRemoteNotMainChain();
error XChainNotAuthorized();
error XChainAlreadyActive();
error XChainNotActive();
error XChainSameChainId();
error XChainInvalidVersion();
error XChainInvalidPayload();
error XChainInvalidDstChain();
error XChainWormholeNotConfigured();
error XChainAlreadyDelivered();

error StateUpdateAlreadyComputed();
error StateUpdateIncorrectChain();
error StateUpdateInvalid();
error StateUpdateInvalidHibachiAddress();
error StateUpdateInvalidHibachiChainId();
error StateUpdateInvalidOperationType(uint8 operationType);
error StateUpdateInvalidPreviousRoot();
error StateUpdateInvalidSystemTime();
error StateUpdateOracleNotRegistered();
error StateUpdateOracleQuorumTooLow();

error Killswitch();
error NotActive();
error NotFrozen();
error Frozen();
