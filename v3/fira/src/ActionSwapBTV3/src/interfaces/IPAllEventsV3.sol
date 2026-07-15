// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {ExitPostExpReturnParams, ExitPreExpReturnParams} from "./IPAllActionTypeV3.sol";

interface IPActionAddRemoveLiqV3Events {
    event AddLiquidityDualFwAndBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netFwUsed,
        uint256 netBtUsed,
        uint256 netLpOut
    );

    event AddLiquidityDualTokenAndBt(
        address indexed caller,
        address indexed market,
        address indexed tokenIn,
        address receiver,
        uint256 netTokenUsed,
        uint256 netBtUsed,
        uint256 netLpOut,
        uint256 netFwInterm
    );

    event AddLiquiditySingleBt(
        address indexed caller, address indexed market, address indexed receiver, uint256 netBtIn, uint256 netLpOut
    );

    event AddLiquiditySingleFw(
        address indexed caller, address indexed market, address indexed receiver, uint256 netFwIn, uint256 netLpOut
    );

    event AddLiquiditySingleToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netTokenIn,
        uint256 netLpOut,
        uint256 netFwInterm
    );

    event AddLiquiditySingleFwKeepCt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netFwIn,
        uint256 netFwMintBc,
        uint256 netLpOut,
        uint256 netCtOut
    );

    event AddLiquiditySingleTokenKeepCt(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netTokenIn,
        uint256 netLpOut,
        uint256 netCtOut,
        uint256 netFwMintBc,
        uint256 netFwInterm
    );

    event RemoveLiquidityDualFwAndBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netBtOut,
        uint256 netFwOut
    );

    event RemoveLiquidityDualTokenAndBt(
        address indexed caller,
        address indexed market,
        address indexed tokenOut,
        address receiver,
        uint256 netLpToRemove,
        uint256 netBtOut,
        uint256 netTokenOut,
        uint256 netFwInterm
    );

    event RemoveLiquiditySingleBt(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netBtOut
    );

    event RemoveLiquiditySingleFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpToRemove,
        uint256 netFwOut
    );

    event RemoveLiquiditySingleToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpToRemove,
        uint256 netTokenOut,
        uint256 netFwInterm
    );
}

interface IPActionSwapBTV3Events {
    event SwapBtAndFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        int256 netBtToAccount,
        int256 netFwToAccount
    );

    event SwapBtAndToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        int256 netBtToAccount,
        int256 netTokenToAccount,
        uint256 netFwInterm
    );
}

interface IPActionSwapCTV3Events {
    event SwapCtAndFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        int256 netCtToAccount,
        int256 netFwToAccount
    );

    event SwapCtAndToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        int256 netCtToAccount,
        int256 netTokenToAccount,
        uint256 netFwInterm
    );
}

interface IPActionMiscV3Events {
    event MintFwFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed FW,
        address receiver,
        uint256 netTokenIn,
        uint256 netFwOut
    );

    event RedeemFwToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed FW,
        address receiver,
        uint256 netFwIn,
        uint256 netTokenOut
    );

    event MintBcFromFw(
        address indexed caller, address indexed receiver, address indexed CT, uint256 netFwIn, uint256 netBcOut
    );

    event RedeemBcToFw(
        address indexed caller, address indexed receiver, address indexed CT, uint256 netBcIn, uint256 netFwOut
    );

    event MintBcFromToken(
        address indexed caller,
        address indexed tokenIn,
        address indexed CT,
        address receiver,
        uint256 netTokenIn,
        uint256 netBcOut,
        uint256 netFwInterm
    );

    event RedeemBcToToken(
        address indexed caller,
        address indexed tokenOut,
        address indexed CT,
        address receiver,
        uint256 netBcIn,
        uint256 netTokenOut,
        uint256 netFwInterm
    );

    event ExitPreExpToToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpIn,
        uint256 totalTokenOut,
        ExitPreExpReturnParams params
    );

    event ExitPreExpToFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpIn,
        ExitPreExpReturnParams params
    );

    event ExitPostExpToToken(
        address indexed caller,
        address indexed market,
        address indexed token,
        address receiver,
        uint256 netLpIn,
        uint256 totalTokenOut,
        ExitPostExpReturnParams params
    );

    event ExitPostExpToFw(
        address indexed caller,
        address indexed market,
        address indexed receiver,
        uint256 netLpIn,
        ExitPostExpReturnParams params
    );
}

interface IPActionStorageEvents {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    event SelectorToFacetSet(bytes4 indexed selector, address indexed facet);
}

interface IPAllEventsV3 is
    IPActionAddRemoveLiqV3Events,
    IPActionSwapBTV3Events,
    IPActionSwapCTV3Events,
    IPActionMiscV3Events,
    IPActionStorageEvents
{}
