// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "../interface/ILP.sol";
import "../interface/IPayMaster.sol";
import "../utils/OrderTools.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/// @title  Azuro relayer helper for processing bets behalf of bettor
contract Relayer is OrderTools, OwnableUpgradeable {
    string private constant _CLIENTDATA_TYPE =
        "ClientData(string attention,address affiliate,address core,uint256 expiresAt,uint256 chainId,uint256 relayerFeeAmount,bool isFeeSponsored,bool isBetSponsored,bool isSponsoredBetReturnable)";
    bytes32 public constant _CLIENTDATA_TYPEHASH =
        keccak256(abi.encodePacked(_CLIENTDATA_TYPE));

    string private constant _SUBBET_TYPE =
        "SubBet(uint256 conditionId,uint128 outcomeId,uint64 minOdds,uint128 amount,uint256 nonce)";
    bytes32 public constant _SUBBET_TYPEHASH =
        keccak256(abi.encodePacked(_SUBBET_TYPE));

    string private constant _CLIENTBETDATA_TYPE =
        "ClientBetData(ClientData clientData,SubBet[] bets)";
    bytes32 public constant _CLIENTBETDATA_TYPEHASH =
        keccak256(
            abi.encodePacked(
                _CLIENTBETDATA_TYPE,
                _CLIENTDATA_TYPE,
                _SUBBET_TYPE
            )
        );

    string private constant _COMBOPART_TYPE =
        "ComboPart(uint256 conditionId,uint128 outcomeId)";
    bytes32 public constant _COMBOPART_TYPE_TYPEHASH =
        keccak256(abi.encodePacked(_COMBOPART_TYPE));

    string private constant _CLIENTCOMBOBETDATA_TYPE =
        "ClientComboBetData(ClientData clientData,uint64 minOdds,uint128 amount,uint256 nonce,ComboPart[] bets)";
    bytes32 private constant _CLIENTCOMBOBETDATA_TYPE_HASH =
        keccak256(
            abi.encodePacked(
                _CLIENTCOMBOBETDATA_TYPE,
                _CLIENTDATA_TYPE,
                _COMBOPART_TYPE
            )
        );

    ILP public lp;
    IPayMaster public payMaster;
    address token;

    error IncorrectAddress();
    error OnlyPaymaster();

    event PayMasterChanged(address indexed payMaster);
    event RelayerRewarded(address indexed relayer, uint256 amount);
    event FeeSponsored(
        address indexed relayer,
        address indexed affiliate,
        address indexed bettor,
        address core,
        uint256[] tokenIds,
        uint256 amount
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address lp_, address payMaster_) external initializer {
        __Ownable_init_unchained(msg.sender);
        lp = ILP(lp_);
        payMaster = IPayMaster(payMaster_);
        token = lp.token();

        // Max approve LP spending
        TransferHelper.safeApprove(token, address(lp), type(uint256).max);
    }

    function betFor(IOrder.OrderData[] calldata orders) external {
        uint256 totalBettorsFee;
        uint256 bettorsFee;
        bytes memory hashes;

        for (uint256 i; i < orders.length; ++i) {
            IOrder.OrderData memory order = orders[i];
            IOrder.ClientData memory data = getClientData(order);
            hashes = getHashes(order);

            // init needed payments
            (uint128 betAmount, uint128[] memory amounts) = getOrderBetsAmounts(
                order
            );
            bettorsFee = data.relayerFeeAmount;

            // if fee or bet sponsored, reduce bettor's payments
            if (data.isFeeSponsored || data.isBetSponsored) {
                (betAmount, bettorsFee) = payMaster.pay(
                    msg.sender,
                    order,
                    data,
                    betAmount,
                    amounts,
                    hashes
                );
            }

            // if not sponsored and bettor need to pay
            if (betAmount + bettorsFee > 0) {
                TransferHelper.safeTransferFrom(
                    token,
                    order.betOwner,
                    address(this),
                    betAmount + bettorsFee
                );
            }

            // if bet not sponsored, bettor make bet
            if (!data.isBetSponsored) {
                uint256[] memory tokenIds = _betOrder(
                    data.core,
                    order,
                    order.betOwner,
                    hashes
                );

                // if sponsored fee
                if (data.isFeeSponsored && data.relayerFeeAmount > 0) {
                    emit FeeSponsored(
                        msg.sender,
                        data.affiliate,
                        order.betOwner,
                        data.core,
                        tokenIds,
                        data.relayerFeeAmount
                    );
                }
            }

            // calculate not sponsered fee
            if (bettorsFee > 0) totalBettorsFee += bettorsFee;
        }

        // relayer executor reward
        if (totalBettorsFee > 0)
            TransferHelper.safeTransfer(token, msg.sender, totalBettorsFee);

        emit RelayerRewarded(msg.sender, totalBettorsFee);
    }

    function betOrder(
        address relayExecutor,
        IOrder.ClientData calldata data,
        OrderData calldata order,
        address betOwner,
        bytes calldata hashes
    ) external returns (uint256[] memory tokenIds) {
        if (msg.sender != address(payMaster)) revert OnlyPaymaster();

        tokenIds = _betOrder(data.core, order, betOwner, hashes);

        if (data.isFeeSponsored && data.relayerFeeAmount > 0) {
            emit FeeSponsored(
                relayExecutor,
                data.affiliate,
                order.betOwner,
                data.core,
                tokenIds,
                data.relayerFeeAmount
            );
        }
    }

    function _betOrder(
        address core,
        OrderData memory order,
        address betOwner,
        bytes memory hashes
    ) internal returns (uint256[] memory tokenIds) {
        return lp.betOrder(core, order, betOwner, hashes);
    }

    function changePayMaster(address payMaster_) external onlyOwner {
        if (payMaster_ == address(0) || address(payMaster) == payMaster_)
            revert IncorrectAddress();
        payMaster = IPayMaster(payMaster_);
        emit PayMasterChanged(payMaster_);
    }

    function getHashes(
        OrderData memory order
    ) internal pure returns (bytes memory) {
        bytes32 structHash;
        bytes32 messageHash;
        uint256 length;
        bytes32[] memory subBetHashes;
        if (order.betType == BetType.ORDINARY) {
            SubBet memory subBet;
            ClientBetData memory data = abi.decode(
                order.clientBetData,
                (ClientBetData)
            );
            length = data.bets.length;
            subBetHashes = new bytes32[](length);

            for (uint256 j; j < length; ++j) {
                subBet = data.bets[j];
                subBetHashes[j] = keccak256(
                    abi.encode(
                        _SUBBET_TYPEHASH,
                        subBet.conditionId,
                        subBet.outcomeId,
                        subBet.minOdds,
                        subBet.amount,
                        subBet.nonce
                    )
                );
            }

            structHash = keccak256(
                abi.encode(
                    _CLIENTBETDATA_TYPEHASH,
                    keccak256(
                        abi.encode(
                            _CLIENTDATA_TYPEHASH,
                            keccak256(bytes(data.clientData.attention)),
                            data.clientData.affiliate,
                            data.clientData.core,
                            data.clientData.expiresAt,
                            data.clientData.chainId,
                            data.clientData.relayerFeeAmount,
                            data.clientData.isFeeSponsored,
                            data.clientData.isBetSponsored,
                            data.clientData.isSponsoredBetReturnable
                        )
                    ),
                    keccak256(abi.encodePacked(subBetHashes))
                )
            );

            messageHash = keccak256(
                abi.encode(
                    order.betOwner,
                    order.conditionDatas,
                    order.betType,
                    data,
                    order.bettorSignature
                )
            );
        } else if (order.betType == BetType.COMBO) {
            ComboPart memory subBet;
            ClientComboBetData memory data = abi.decode(
                order.clientBetData,
                (ClientComboBetData)
            );
            length = data.comboParts.length;
            subBetHashes = new bytes32[](length);

            for (uint256 j; j < length; ++j) {
                subBet = data.comboParts[j];
                subBetHashes[j] = keccak256(
                    abi.encode(
                        _COMBOPART_TYPE_TYPEHASH,
                        subBet.conditionId,
                        subBet.outcomeId
                    )
                );
            }
            structHash = keccak256(
                abi.encode(
                    _CLIENTCOMBOBETDATA_TYPE_HASH,
                    keccak256(
                        abi.encode(
                            _CLIENTDATA_TYPEHASH,
                            keccak256(bytes(data.clientData.attention)),
                            data.clientData.affiliate,
                            data.clientData.core,
                            data.clientData.expiresAt,
                            data.clientData.chainId,
                            data.clientData.relayerFeeAmount,
                            data.clientData.isFeeSponsored,
                            data.clientData.isBetSponsored,
                            data.clientData.isSponsoredBetReturnable
                        )
                    ),
                    data.minOdds,
                    data.amount,
                    data.nonce,
                    keccak256(abi.encodePacked(subBetHashes))
                )
            );

            messageHash = keccak256(
                abi.encode(
                    order.betOwner,
                    order.conditionDatas,
                    order.betType,
                    data,
                    order.bettorSignature
                )
            );
        }

        return abi.encodePacked(structHash, messageHash);
    }
}
