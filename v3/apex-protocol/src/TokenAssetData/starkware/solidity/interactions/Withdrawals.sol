/*
  Copyright 2019-2025 StarkWare Industries Ltd.

  Licensed under the Apache License, Version 2.0 (the "License").
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  https://www.starkware.co/open-source-license/

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions
  and limitations under the License.
*/
// SPDX-License-Identifier: Apache-2.0.
pragma solidity ^0.6.12;

import "starkware/solidity/interfaces/MAcceptModifications.sol";
import "starkware/solidity/interfaces/MTokenQuantization.sol";
import "starkware/solidity/interfaces/MTokenAssetData.sol";
import "starkware/solidity/interfaces/MFreezable.sol";
import "starkware/solidity/interfaces/MKeyGetters.sol";
import "starkware/solidity/interfaces/MTokenTransfers.sol";
import "starkware/solidity/components/MainStorage.sol";

/**
  For a user to perform a withdrawal operation from the Stark Exchange during normal operation
  two calls are required:

  1. A call to an offchain exchange API, requesting a withdrawal from a user account (vault).
  2. A call to the on-chain :sol:func:`withdraw` function to perform the actual withdrawal of funds transferring them to the users Eth or ERC20 account (depending on the token type).

  For simplicity, hereafter it is assumed that all tokens are ERC20 tokens but the text below
  applies to Eth in the same manner.

  In the first call mentioned above, anyone can call the API to request the withdrawal of an
  amount from a given vault. Following the request, the exchange may include the withdrawal in a
  STARK proof. The submission of a proof then results in the addition of the amount(s) withdrawn to
  an on-chain pending withdrawals account under the stark key of the vault owner and the appropriate
  asset ID. At the same time, this also implies that this amount is deducted from the off-chain
  vault.

  Once the amount to be withdrawn has been transfered to the on-chain pending withdrawals account,
  the user may perform the second call mentioned above to complete the transfer of funds from the
  Stark Exchange contract to the appropriate ERC20 account. Only a user holding the Eth key
  corresponding to the Stark Key of a pending withdrawals account may perform this operation.

  It is possible that for multiple withdrawal calls to the API, a single withdrawal call to the
  contract may retrieve all funds, as long as they are all for the same asset ID.

  The result of the operation, assuming all requirements are met, is that an amount of ERC20 tokens
  in the pending withdrawal account times the quantization factor is transferred to the ERC20
  account of the user.

  A withdrawal request cannot be cancelled. Once funds reach the pending withdrawals account
  on-chain, they cannot be moved back into an off-chain vault before completion of the withdrawal
  to the ERC20 account of the user.

  In the event that the exchange reaches a frozen state the user may perform a withdrawal operation
  via an alternative flow, known as the "Escape" flow. In this flow, the API call above is replaced
  with an :sol:func:`escape` call to the on-chain contract (see :sol:mod:`Escapes`) proving the
  ownership of off-chain funds. If such proof is accepted, the user may proceed as above with
  the :sol:func:`withdraw` call to the contract to complete the operation.
*/
abstract contract Withdrawals is
    MainStorage,
    MAcceptModifications,
    MTokenQuantization,
    MTokenAssetData,
    MFreezable,
    MKeyGetters,
    MTokenTransfers
{
    event LogWithdrawalPerformed(
        uint256 ownerKey,
        uint256 assetType,
        uint256 nonQuantizedAmount,
        uint256 quantizedAmount,
        address recipient
    );

    event LogNftWithdrawalPerformed(
        uint256 ownerKey,
        uint256 assetType,
        uint256 tokenId,
        uint256 assetId,
        address recipient
    );

    event LogWithdrawalWithTokenIdPerformed(
        uint256 ownerKey,
        uint256 assetType,
        uint256 tokenId,
        uint256 assetId,
        uint256 nonQuantizedAmount,
        uint256 quantizedAmount,
        address recipient
    );

  event LogWithdrawalWithFeePerformed(
        uint256 ownerKey,
        uint256 assetType,
        uint256 nonQuantizedAmount,
        uint256 quantizedAmount,
        address recipient,
        uint256 fee,
        address feeRecipient
    );

    event LogWithdrawalWithFeeToBaseBankPerformed(
        uint256 ownerKey,
        uint256 assetType,
        uint256 nonQuantizedAmount,
        uint256 quantizedAmount,
        address ethKey,
        uint256 fee,
        address feeRecipient,
        address l1Messenger,
        address baseCrossDomainDeposit,
        address sorareAddress
    );

    event LogMintWithdrawalPerformed(
        uint256 ownerKey,
        uint256 assetType,
        uint256 nonQuantizedAmount,
        uint256 quantizedAmount,
        uint256 assetId
    );

    function getWithdrawalBalance(uint256 ownerKey, uint256 assetId)
        external
        view
        returns (uint256)
    {
        uint256 presumedAssetType = assetId;
        return fromQuantized(presumedAssetType, pendingWithdrawals[ownerKey][assetId]);
    }

    /*
      Moves funds from the pending withdrawal account to the owner address.
      Note: this function can be called by anyone.
      Can be called normally while frozen.
    */
    function withdraw(uint256 ownerKey, uint256 assetType) external {
        address payable recipient = payable(strictGetEthKey(ownerKey));
        require(!isMintableAssetType(assetType), "MINTABLE_ASSET_TYPE");
        require(isFungibleAssetType(assetType), "NON_FUNGIBLE_ASSET_TYPE");
        uint256 assetId = assetType;
        // Fetch and clear quantized amount.
        uint256 quantizedAmount = pendingWithdrawals[ownerKey][assetId];
        pendingWithdrawals[ownerKey][assetId] = 0;

        // Transfer funds.
        transferOut(recipient, assetType, quantizedAmount);
        emit LogWithdrawalPerformed(
            ownerKey,
            assetType,
            fromQuantized(assetType, quantizedAmount),
            quantizedAmount,
            recipient
        );
    }

    /*
      Allows withdrawal of tokens to their owner's account.
      Note: this function can be called by anyone.
      This function can be called normally while frozen.
    */
    function withdrawWithTokenId(
        uint256 ownerKey,
        uint256 assetType,
        uint256 tokenId // No notFrozen modifier: This function can always be used, even when frozen.
    ) public {
        require(isAssetTypeWithTokenId(assetType), "INVALID_ASSET_TYPE");
        uint256 assetId = calculateAssetIdWithTokenId(assetType, tokenId);
        address recipient = strictGetEthKey(ownerKey);

        uint256 quantizedAmount = pendingWithdrawals[ownerKey][assetId];
        pendingWithdrawals[ownerKey][assetId] = 0;

        // Transfer funds.
        transferOutWithTokenId(recipient, assetType, tokenId, quantizedAmount);
        if (isERC721(assetType)) {
            emit LogNftWithdrawalPerformed(ownerKey, assetType, tokenId, assetId, recipient);
        }
        emit LogWithdrawalWithTokenIdPerformed(
            ownerKey,
            assetType,
            tokenId,
            assetId,
            fromQuantized(assetType, quantizedAmount),
            quantizedAmount,
            recipient
        );
    }

    /*
      Allows withdrawal of an NFT to its owner's account.
      Note: this function can be called by anyone.
      This function can be called normally while frozen.
    */
    function withdrawNft(
        uint256 ownerKey,
        uint256 assetType,
        uint256 tokenId // No notFrozen modifier: This function can always be used, even when frozen.
    ) external {
        withdrawWithTokenId(ownerKey, assetType, tokenId);
    }

    // Shared by `withdrawWithFee` and `withdrawWithFeeToBaseBank`.
    struct WithFeeParams {
        uint256 ownerKey;
        uint256 assetType;
        uint256 fee;
        address payable feeRecipient;
    }

    // Extra params used only by the `withdrawWithFeeToBaseBank` cross-domain variant.
    struct BaseBankParams {
        address l1Messenger;
        address baseCrossDomainDeposit;
        address sorareAddress;
        uint32 minGasLimit;
    }

/*
      Like `withdraw`, but routes a `fee` portion of the ETH to `feeRecipient` and sends the
      remainder to the registered ETH key. Authorized by an offline signature from the registered
      ETH key over the function name, fee, feeRecipient (plus chainId and contract address to
      bind the signature to this deployment).

      ETH-only. Can be called by anyone. Works while frozen (no notFrozen modifier), so it is
      usable as the final step of the escape flow.
    */
    function withdrawWithFee_10(
        uint256 ownerKey,
        uint256 assetType,
        uint256 fee,
        address payable feeRecipient,
        bytes calldata signature
    ) external {
        require(isEther(assetType), "ETH_ONLY");
        require(feeRecipient != address(0x0), "INVALID_FEE_RECIPIENT");

        _doWithdrawWithFee(
            WithFeeParams({
                ownerKey: ownerKey,
                assetType: assetType,
                fee: fee,
                feeRecipient: feeRecipient
            }),
            signature
        );
    }

    function _doWithdrawWithFee(WithFeeParams memory feeParams, bytes calldata signature) private {
        address payable recipient = payable(strictGetEthKey(feeParams.ownerKey));

        {
            bytes32 digest = keccak256(
                abi.encode(
                    "withdrawWithFee",
                    _chainId(),
                    address(this),
                    feeParams.fee,
                    feeParams.feeRecipient
                )
            );
            require(_recoverEthSigner(digest, signature) == recipient, "INVALID_SIGNATURE");
        }

        uint256 quantizedAmount = pendingWithdrawals[feeParams.ownerKey][feeParams.assetType];
        pendingWithdrawals[feeParams.ownerKey][feeParams.assetType] = 0;

        uint256 amount = fromQuantized(feeParams.assetType, quantizedAmount);
        require(feeParams.fee <= amount, "FEE_EXCEEDS_AMOUNT");
        uint256 ownerAmount = amount - feeParams.fee;

        if (feeParams.fee > 0) {
            (bool feeOk, ) = feeParams.feeRecipient.call{value: feeParams.fee}("");
            require(feeOk, "FEE_TRANSFER_FAILED");
        }
        if (ownerAmount > 0) {
            (bool ownerOk, ) = recipient.call{value: ownerAmount}("");
            require(ownerOk, "ETH_TRANSFER_FAILED");
        }

        emit LogWithdrawalWithFeePerformed(
            feeParams.ownerKey,
            feeParams.assetType,
            amount,
            quantizedAmount,
            recipient,
            feeParams.fee,
            feeParams.feeRecipient
        );
    }

    /*
      Like `withdrawWithFee`, but instead of sending the owner's share to the registered ETH key,
      it bridges it to Base via the L1CrossDomainMessenger so that a contract recipient on Base
      (the Sorare CrossDomainDeposit) can dispatch into its own logic. Mirrors the Sorare
      frontend large-deposit path (useDepositBaseBankEth.tsx):

          l1Messenger.sendMessage(
              baseCrossDomainDeposit,
              encodeCall(depositETHWithCrossDomainMessaging, sorareAddress),
              minGasLimit
          )

      All cross-domain arguments are bound into the signed digest to prevent a caller from
      redirecting funds on the L2 side.

      Note: an earlier draft used L1StandardBridge.depositETHTo, which is the wrong primitive
      for contract-recipient deposits — the L2 finalization cannot dispatch into the recipient's
      logic. The messenger+depositETHWithCrossDomainMessaging shape was verified end-to-end on
      Sepolia → Base Sepolia before this port. See docs/escape-fee-withdrawals.md.

      ETH-only. Can be called by anyone. Works while frozen.
    */
    function withdrawWithFeeToBaseBank(
        uint256 ownerKey,
        uint256 assetType,
        uint256 fee,
        address payable feeRecipient,
        bytes calldata signature,
        address l1Messenger,
        address baseCrossDomainDeposit,
        address sorareAddress,
        uint32 minGasLimit
    ) external {
        require(isEther(assetType), "ETH_ONLY");
        require(feeRecipient != address(0x0), "INVALID_FEE_RECIPIENT");
        require(l1Messenger != address(0x0), "INVALID_L1_MESSENGER");
        require(baseCrossDomainDeposit != address(0x0), "INVALID_BASE_TARGET");
        require(sorareAddress != address(0x0), "INVALID_SORARE_ADDRESS");

        _doWithdrawWithFeeToBaseBank(
            WithFeeParams({
                ownerKey: ownerKey,
                assetType: assetType,
                fee: fee,
                feeRecipient: feeRecipient
            }),
            BaseBankParams({
                l1Messenger: l1Messenger,
                baseCrossDomainDeposit: baseCrossDomainDeposit,
                sorareAddress: sorareAddress,
                minGasLimit: minGasLimit
            }),
            signature
        );
    }

    function _doWithdrawWithFeeToBaseBank(
        WithFeeParams memory feeParams,
        BaseBankParams memory bridgeParams,
        bytes calldata signature
    ) private {
        address ethKey = strictGetEthKey(feeParams.ownerKey);

        {
            bytes32 digest = keccak256(
                abi.encode(
                    "withdrawWithFeeToBaseBank",
                    _chainId(),
                    address(this),
                    feeParams.fee,
                    feeParams.feeRecipient,
                    bridgeParams.l1Messenger,
                    bridgeParams.baseCrossDomainDeposit,
                    bridgeParams.sorareAddress,
                    bridgeParams.minGasLimit
                )
            );
            require(_recoverEthSigner(digest, signature) == ethKey, "INVALID_SIGNATURE");
        }

        uint256 quantizedAmount = pendingWithdrawals[feeParams.ownerKey][feeParams.assetType];
        pendingWithdrawals[feeParams.ownerKey][feeParams.assetType] = 0;

        uint256 amount = fromQuantized(feeParams.assetType, quantizedAmount);
        require(feeParams.fee <= amount, "FEE_EXCEEDS_AMOUNT");

        if (feeParams.fee > 0) {
            (bool feeOk, ) = feeParams.feeRecipient.call{value: feeParams.fee}("");
            require(feeOk, "FEE_TRANSFER_FAILED");
        }
        uint256 bridgeAmount = amount - feeParams.fee;
        if (bridgeAmount > 0) {
            _bridgeToBase(bridgeParams, bridgeAmount);
        }

        _emitBaseBankLog(feeParams, bridgeParams, amount, quantizedAmount, ethKey);
    }

    function _bridgeToBase(BaseBankParams memory bridgeParams, uint256 bridgeAmount) private {
        bytes memory innerCall = abi.encodeWithSignature(
            "depositETHWithCrossDomainMessaging(address)",
            bridgeParams.sorareAddress
        );
        bytes memory sendMessageCall = abi.encodeWithSignature(
            "sendMessage(address,bytes,uint32)",
            bridgeParams.baseCrossDomainDeposit,
            innerCall,
            bridgeParams.minGasLimit
        );
        (bool ok, bytes memory ret) = bridgeParams.l1Messenger.call{value: bridgeAmount}(sendMessageCall);
        require(ok, string(ret));
    }

    function _emitBaseBankLog(
        WithFeeParams memory feeParams,
        BaseBankParams memory bridgeParams,
        uint256 amount,
        uint256 quantizedAmount,
        address ethKey
    ) private {
        emit LogWithdrawalWithFeeToBaseBankPerformed(
            feeParams.ownerKey,
            feeParams.assetType,
            amount,
            quantizedAmount,
            ethKey,
            feeParams.fee,
            feeParams.feeRecipient,
            bridgeParams.l1Messenger,
            bridgeParams.baseCrossDomainDeposit,
            bridgeParams.sorareAddress
        );
    }

    function _chainId() private view returns (uint256 id) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            id := chainid()
        }
    }

    /*
      Recovers the signer from an EIP-191 personal-sign signature of `digest`.
      Accepts 65-byte (r,s,v) signatures; rejects malleable s and v != 27/28.
    */
    function _recoverEthSigner(bytes32 digest, bytes memory signature)
        private
        pure
        returns (address)
    {
        require(signature.length == 65, "INVALID_SIGNATURE_LENGTH");
        bytes32 r;
        bytes32 s;
        uint8 v;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            r := mload(add(signature, 0x20))
            s := mload(add(signature, 0x40))
            v := byte(0, mload(add(signature, 0x60)))
        }
        require(
            uint256(s) <= 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0,
            "INVALID_SIGNATURE_S"
        );
        require(v == 27 || v == 28, "INVALID_SIGNATURE_V");
        bytes32 ethSigned = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", digest)
        );
        address signer = ecrecover(ethSigned, v, r, s);
        require(signer != address(0x0), "INVALID_SIGNATURE");
        return signer;
    }

    function withdrawAndMint(
        uint256 ownerKey,
        uint256 assetType,
        bytes calldata mintingBlob
    ) external {
        address recipient = strictGetEthKey(ownerKey);
        require(registeredAssetType[assetType], "INVALID_ASSET_TYPE");
        require(isMintableAssetType(assetType), "NON_MINTABLE_ASSET_TYPE");
        uint256 assetId = calculateMintableAssetId(assetType, mintingBlob);
        require(pendingWithdrawals[ownerKey][assetId] > 0, "NO_PENDING_WITHDRAWAL_BALANCE");
        uint256 quantizedAmount = pendingWithdrawals[ownerKey][assetId];
        pendingWithdrawals[ownerKey][assetId] = 0;
        // Transfer funds.
        transferOutMint(assetType, quantizedAmount, recipient, mintingBlob);
        emit LogMintWithdrawalPerformed(
            ownerKey,
            assetType,
            fromQuantized(assetType, quantizedAmount),
            quantizedAmount,
            assetId
        );
    }
}
