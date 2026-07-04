// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./modules/NftTransferModule.sol";
import "../Sickle.sol";
import "../interfaces/IFarmConnector.sol";
import "../interfaces/external/IWETH.sol";
import "./modules/ZapModule.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { FixedPointMathLib } from "solmate/utils/FixedPointMathLib.sol";
import { IERC721 } from "@openzeppelin/contracts/token/ERC721/IERC721.sol";

library FarmStrategyFees {
    bytes4 constant Deposit = bytes4(keccak256("FarmDepositFee"));
    bytes4 constant Harvest = bytes4(keccak256("FarmHarvestFee"));
    bytes4 constant Compound = bytes4(keccak256("FarmCompoundFee"));
    bytes4 constant CompoundFor = bytes4(keccak256("FarmCompoundForFee"));
    bytes4 constant Withdraw = bytes4(keccak256("FarmWithdrawFee"));
}

contract FarmStrategy is NftTransferModule, ZapModule {
    error GasCostExceedsEstimate();

    constructor(
        SickleFactory factory_,
        FeesLib feesLib_,
        ConnectorRegistry connectorRegistry_,
        address wrappedNativeAddress_
    )
        NftTransferModule(factory_, feesLib_, wrappedNativeAddress_)
        ZapModule(connectorRegistry_)
    { }

    function deposit(
        address stakingContractAddress,
        ZapModule.ZapInData memory zapData,
        bytes memory extraData,
        address approved,
        bytes32 referralCode
    ) public payable {
        Sickle sickle = Sickle(
            payable(factory.getOrDeploy(msg.sender, approved, referralCode))
        );

        bool zapInRequired = zapData.tokenIn != zapData.addLiquidityData.lpToken;

        uint256 arrayLength = zapInRequired ? 4 : 3;

        address[] memory targets = new address[](arrayLength);
        bytes[] memory data = new bytes[](arrayLength);

        bytes4 feeSelector =
            zapInRequired ? FarmStrategyFees.Deposit : bytes4(0);

        targets[0] = address(this);
        data[0] = abi.encodeCall(
            this._sickle_transfer_from_user,
            (zapData.tokenIn, zapData.amountIn, address(this), feeSelector)
        );

        if (zapInRequired) {
            targets[1] = address(this);
            data[1] = abi.encodeCall(ZapModule.zapIn, (zapData));
        }

        targets[arrayLength - 2] =
            connectorRegistry.connectorOf(stakingContractAddress);
        data[arrayLength - 2] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                stakingContractAddress,
                zapData.addLiquidityData.lpToken,
                extraData
            )
        );

        // sweep dust back to sickle owner
        address[] memory tokens =
            new address[](zapData.addLiquidityData.tokens.length + 1);
        for (uint256 i = 0; i < zapData.addLiquidityData.tokens.length;) {
            tokens[i] = zapData.addLiquidityData.tokens[i];
            unchecked {
                i++;
            }
        }
        tokens[tokens.length - 1] = zapData.tokenIn;

        targets[arrayLength - 1] = address(this);
        data[arrayLength - 1] =
            abi.encodeCall(this._sickle_transfer_to_user, (tokens));

        sickle.multicall{ value: msg.value }(targets, data);
    }

    function depositErc721(
        address nftContractAddress,
        uint256 tokenId,
        address stakingContractAddress,
        bytes memory extraData,
        address approved,
        bytes32 referralCode
    ) public {
        Sickle sickle = Sickle(
            payable(factory.getOrDeploy(msg.sender, approved, referralCode))
        );

        address farmConnector =
            connectorRegistry.connectorOf(stakingContractAddress);

        address[] memory targets = new address[](2);
        bytes[] memory data = new bytes[](2);

        targets[0] = address(this);
        data[0] = abi.encodeCall(
            this._sickle_transfer_nft_from_user, (nftContractAddress, tokenId)
        );

        targets[1] = farmConnector;
        data[1] = abi.encodeCall(
            IFarmConnector.deposit,
            (stakingContractAddress, nftContractAddress, extraData)
        );

        sickle.multicall(targets, data);
    }

    function withdrawErc721(
        address nftContractAddress,
        uint256 tokenId,
        address stakingContractAddress,
        bytes memory extraData,
        address[] calldata sweepTokens
    ) public {
        Sickle sickle = Sickle(payable(factory.sickles(msg.sender)));
        if (address(sickle) == address(0)) {
            revert SickleNotDeployed();
        }

        address farmConnector =
            connectorRegistry.connectorOf(stakingContractAddress);

        address[] memory targets = new address[](3);
        bytes[] memory data = new bytes[](3);

        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.withdraw,
            (stakingContractAddress, tokenId, extraData)
        );

        targets[1] = address(this);
        data[1] = abi.encodeCall(
            this._sickle_transfer_nft_to_user, (nftContractAddress, tokenId)
        );

        targets[2] = address(this);
        data[2] = abi.encodeCall(this._sickle_transfer_to_user, (sweepTokens));

        sickle.multicall(targets, data);
    }

    function compoundFor(
        address sickleAddress,
        address claimContractAddress,
        address depositContractAddress,
        ZapModule.ZapInData memory feeZapData,
        ZapModule.ZapInData memory compoundZapData,
        bytes memory claimExtraData,
        bytes memory depositExtraData,
        uint256 estimateCost
    ) external checkOwnerOrApproved(sickleAddress) {
        uint256 initialGas = gasleft();

        Sickle sickle = Sickle(payable(sickleAddress));

        address[] memory targets = new address[](7);
        bytes[] memory data = new bytes[](7);

        address farmConnector =
            connectorRegistry.connectorOf(claimContractAddress);

        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.claim, (claimContractAddress, claimExtraData)
        );

        targets[1] = address(this);
        data[1] = abi.encodeCall(
            this._sickle_charge_fees,
            (address(this), FarmStrategyFees.CompoundFor, feeZapData.tokenIn)
        );

        targets[2] = address(this);
        data[2] = abi.encodeCall(ZapModule.zapIn, (feeZapData));

        targets[3] = address(this);
        data[3] = abi.encodeCall(
            this._sickle_chargeTransactionCost,
            (msg.sender, wrappedNativeAddress, estimateCost)
        );

        targets[4] = address(this);
        data[4] = abi.encodeCall(ZapModule.zapIn, (compoundZapData));

        targets[5] = farmConnector;
        data[5] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                depositContractAddress,
                compoundZapData.addLiquidityData.lpToken,
                depositExtraData
            )
        );

        // sweep dust back to sickle owner
        address[] memory tokens =
            new address[](compoundZapData.addLiquidityData.tokens.length + 1);
        for (uint256 i = 0; i < compoundZapData.addLiquidityData.tokens.length;)
        {
            tokens[i] = compoundZapData.addLiquidityData.tokens[i];
            unchecked {
                i++;
            }
        }
        tokens[tokens.length - 1] = compoundZapData.tokenIn;

        targets[6] = address(this);
        data[6] = abi.encodeCall(this._sickle_transfer_to_user, (tokens));

        sickle.multicall(targets, data);

        uint256 gasUsed = initialGas - gasleft();
        if (gasUsed * tx.gasprice > estimateCost) {
            revert GasCostExceedsEstimate();
        }
    }

    function compound(
        address sickleAddress,
        address claimContractAddress,
        address depositContractAddress,
        ZapModule.ZapInData memory zapData,
        bytes memory claimExtraData,
        bytes memory depositExtraData
    ) external checkOwnerOrApproved(sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        address[] memory targets = new address[](5);
        bytes[] memory data = new bytes[](5);

        address farmConnector =
            connectorRegistry.connectorOf(claimContractAddress);

        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.claim, (claimContractAddress, claimExtraData)
        );

        targets[1] = address(this);
        data[1] = abi.encodeCall(
            this._sickle_charge_fees,
            (address(this), FarmStrategyFees.Compound, zapData.tokenIn)
        );

        targets[2] = address(this);
        data[2] = abi.encodeCall(ZapModule.zapIn, (zapData));

        targets[3] = farmConnector;
        data[3] = abi.encodeCall(
            IFarmConnector.deposit,
            (
                depositContractAddress,
                zapData.addLiquidityData.lpToken,
                depositExtraData
            )
        );

        // sweep dust back to sickle owner
        address[] memory tokens =
            new address[](zapData.addLiquidityData.tokens.length + 1);
        for (uint256 i = 0; i < zapData.addLiquidityData.tokens.length;) {
            tokens[i] = zapData.addLiquidityData.tokens[i];
            unchecked {
                i++;
            }
        }
        tokens[tokens.length - 1] = zapData.tokenIn;

        targets[4] = address(this);
        data[4] = abi.encodeCall(this._sickle_transfer_to_user, (tokens));

        sickle.multicall(targets, data);
    }

    function withdraw(
        address stakingContractAddress,
        ZapModule.ZapOutData calldata zapData,
        bytes memory extraData
    ) public {
        Sickle sickle = Sickle(payable(factory.sickles(msg.sender)));
        if (address(sickle) == address(0)) {
            revert SickleNotDeployed();
        }

        bool zapOutRequired =
            zapData.tokenOut != zapData.removeLiquidityData.lpToken;

        uint256 arrayLength = zapOutRequired ? 4 : 2;

        address[] memory targets = new address[](arrayLength);
        bytes[] memory data = new bytes[](arrayLength);

        address farmConnector =
            connectorRegistry.connectorOf(stakingContractAddress);
        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.withdraw,
            (
                stakingContractAddress,
                zapData.removeLiquidityData.lpAmountIn,
                extraData
            )
        );

        if (zapOutRequired) {
            targets[1] = address(this);
            data[1] = abi.encodeCall(ZapModule.zapOut, (zapData));

            targets[2] = address(this);
            data[2] = abi.encodeCall(
                this._sickle_charge_fees,
                (address(this), FarmStrategyFees.Withdraw, zapData.tokenOut)
            );
        }

        address[] memory tokens =
            new address[](zapData.removeLiquidityData.tokens.length + 1);
        if (zapData.removeLiquidityData.lpToken != address(0)) {
            for (
                uint256 i = 0;
                i < zapData.removeLiquidityData.tokens.length;
                i++
            ) {
                tokens[i] = zapData.removeLiquidityData.tokens[i];
            }
        }
        tokens[tokens.length - 1] = zapData.tokenOut;

        targets[arrayLength - 1] = address(this);
        data[arrayLength - 1] =
            abi.encodeCall(this._sickle_transfer_to_user, (tokens));

        sickle.multicall(targets, data);
    }

    function harvest(
        address stakingContractAddress,
        ZapModule.ZapOutData calldata zapData,
        bytes memory extraData
    ) public {
        Sickle sickle = Sickle(payable(factory.sickles(msg.sender)));
        if (address(sickle) == address(0)) {
            revert SickleNotDeployed();
        }

        uint256 arrayLength = zapData.swaps.length > 0 ? 4 : 2;

        address[] memory targets = new address[](arrayLength);
        bytes[] memory data = new bytes[](arrayLength);

        address farmConnector =
            connectorRegistry.connectorOf(stakingContractAddress);
        targets[0] = farmConnector;
        data[0] = abi.encodeCall(
            IFarmConnector.claim, (stakingContractAddress, extraData)
        );

        if (zapData.swaps.length > 0) {
            targets[1] = address(this);
            data[1] = abi.encodeCall(ZapModule.zapOut, (zapData));

            targets[2] = address(this);
            data[2] = abi.encodeCall(
                this._sickle_charge_fees,
                (address(this), FarmStrategyFees.Harvest, zapData.tokenOut)
            );
        }

        address[] memory tokens = new address[](1);
        tokens[0] = zapData.tokenOut;

        targets[arrayLength - 1] = address(this);
        data[arrayLength - 1] =
            abi.encodeCall(this._sickle_transfer_to_user, (tokens));

        sickle.multicall(targets, data);
    }

    function exit(
        address stakingContractAddress,
        ZapModule.ZapOutData calldata harvestZapData,
        ZapModule.ZapOutData calldata withdrawZapData,
        bytes memory extraData
    ) external {
        harvest(stakingContractAddress, harvestZapData, extraData);
        withdraw(stakingContractAddress, withdrawZapData, extraData);
    }
}
