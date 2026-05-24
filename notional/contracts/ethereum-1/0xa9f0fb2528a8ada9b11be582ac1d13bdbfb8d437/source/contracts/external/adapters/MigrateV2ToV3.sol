// SPDX-License-Identifier: BSUL-1.1
pragma solidity =0.7.6;
pragma abicoder v2;

import "../../global/Types.sol";
import "../../math/SafeInt256.sol";
import "../../math/SafeUint256.sol";
import "../../../interfaces/notional/NotionalProxy.sol";
import "../../../interfaces/notional/NotionalCallback.sol";
import "../../../interfaces/IERC20.sol";
import "../../../interfaces/compound/CErc20Interface.sol";

interface NotionalV2 {
    function withdrawToMigration(address account, uint16 currencyId) external returns (uint256);
    function depositUnderlyingToken(
        address account,
        uint16 currencyId,
        uint256 amountExternalPrecision
    ) external payable returns (uint256);
    function getCurrency(uint16 currencyId) external view returns (
        Token memory assetToken, Token memory underlyingToken
    );
}

contract MigrateV2ToV3 is NotionalCallback {
    using SafeInt256 for int256;
    using SafeUint256 for uint256;

    struct CallbackData {
        address v2_account;
        uint256 daiAmountExternal;
        uint256 usdcAmountExternal;
        bool withdrawETH;
        bool withdrawBTC;
    }

    string public constant name = "Migrate V2 to V3";
    NotionalV2 public constant NOTIONAL_V2 = NotionalV2(0x1344A36A1B56144C3Bc62E7757377D288fDE0369);
    NotionalProxy public constant NOTIONAL_V3 = NotionalProxy(0x6e7058c91F85E0F6db4fc9da2CA41241f5e4263f);
    address public constant MigrationManager = 0x02479BFC7Dce53A02e26fE7baea45a0852CB0909;

    IERC20 DAI_TOKEN = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    IERC20 USDC_TOKEN = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    uint16 internal constant ETH = 1;
    uint16 internal constant DAI = 2;
    uint16 internal constant USDC = 3;
    uint16 internal constant WBTC = 4;

    function migrateBorrower(
        address proxy_account,
        BalanceActionWithTrades[] calldata borrowAction,
        CallbackData calldata data
    ) external {
        require(msg.sender == MigrationManager, "Unauthorized");
        NOTIONAL_V3.batchBalanceAndTradeActionWithCallback(proxy_account, borrowAction, abi.encode(data));
    }

    function migrateLender(uint16 currencyId, address account) external {
        require(msg.sender == MigrationManager, "Unauthorized");
        _migrateNWToken(currencyId, account, account);
    }

    function notionalCallback(
        address sender,
        address proxy_account,
        bytes calldata callbackData
    ) external override {
        require(msg.sender == address(NOTIONAL_V3) && sender == address(this), "Unauthorized callback");
        // Now we have sufficient tokens in the currency id...
        CallbackData memory c = abi.decode(callbackData, (CallbackData));

        if (c.daiAmountExternal > 0) {
            DAI_TOKEN.transferFrom(proxy_account, address(this), c.daiAmountExternal);
            DAI_TOKEN.approve(address(NOTIONAL_V2), c.daiAmountExternal);
            NOTIONAL_V2.depositUnderlyingToken(c.v2_account, DAI, c.daiAmountExternal);
        } 

        if (c.usdcAmountExternal > 0) {
            USDC_TOKEN.transferFrom(proxy_account, address(this), c.usdcAmountExternal);
            USDC_TOKEN.approve(address(NOTIONAL_V2), c.usdcAmountExternal);
            NOTIONAL_V2.depositUnderlyingToken(c.v2_account, USDC, c.usdcAmountExternal);
        }
        
        if (c.withdrawETH) _migrateNWToken(ETH, c.v2_account, proxy_account);
        if (c.withdrawBTC) _migrateNWToken(WBTC, c.v2_account, proxy_account);
    }

    function _migrateNWToken(
        uint16 currencyId,
        address account,
        address depositAccount
    ) internal {
        uint256 nwTokens = NOTIONAL_V2.withdrawToMigration(account, currencyId);
        (Token memory assetToken, Token memory underlyingToken) = NOTIONAL_V2.getCurrency(currencyId);

        IERC20 underlying = IERC20(underlyingToken.tokenAddress);
        CErc20Interface nwToken = CErc20Interface(assetToken.tokenAddress);

        uint256 balanceBefore = currencyId == ETH ?
            address(this).balance : 
            underlying.balanceOf(address(this));

        nwToken.redeem(nwTokens);

        uint256 balanceAfter = currencyId == ETH ? 
            address(this).balance : 
            underlying.balanceOf(address(this));
        uint256 externalAmount = balanceAfter.sub(balanceBefore);
        // This will result in a failed deposit due to dust
        if ((currencyId == ETH || currencyId == DAI) && externalAmount / 1e11 == 0) return;

        if (externalAmount > 0) {
            if (currencyId != ETH) underlying.approve(address(NOTIONAL_V3), externalAmount);

            NOTIONAL_V3.depositUnderlyingToken{value: currencyId == ETH ? externalAmount : 0}(
                depositAccount, currencyId, externalAmount
            );
        }
    }

    receive() payable external {}
}