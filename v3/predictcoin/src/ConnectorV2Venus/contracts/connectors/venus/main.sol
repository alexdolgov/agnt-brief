pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

/**
 * @title Venus.
 * @dev Lending & Borrowing.
 */

import {TokenInterface} from "../../common/interfaces.sol";
import {Stores} from "../../common/stores.sol";
import {Helpers} from "./helpers.sol";
import {Events} from "./events.sol";
import {VETHInterface, VTokenInterface} from "./interface.sol";

abstract contract VenusResolver is Events, Helpers {
    /**
     * @dev Deposit ETH/ERC20_Token.
     * @notice Deposit a token to Venus for lending / collaterization.
     * @param token The address of the token to deposit. (For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vToken The address of the corresponding vToken.
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens deposited.
     */
    function depositRaw(
        address token,
        address vToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        require(
            token != address(0) && vToken != address(0),
            "invalid token/vToken address"
        );

        enterMarket(vToken);
        if (token == ethAddr) {
            _amt = _amt == uint256(-1) ? address(this).balance : _amt;
            VETHInterface(vToken).mint{value: _amt}();
        } else {
            TokenInterface tokenContract = TokenInterface(token);
            _amt = _amt == uint256(-1)
                ? tokenContract.balanceOf(address(this))
                : _amt;
            tokenContract.approve(vToken, _amt);
            require(VTokenInterface(vToken).mint(_amt) == 0, "deposit-failed");
        }
        setUint(setId, _amt);

        _eventName = "LogDeposit(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, vToken, _amt, getId, setId);
    }

    /**
     * @dev Deposit ETH/ERC20_Token using the Mapping.
     * @notice Deposit a token to Venus for lending / collaterization.
     * @param tokenId The token id of the token to deposit.(For eg: ETH-A)
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens deposited.
     */
    function deposit(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address token, address vToken) = venusMapping.getMapping(tokenId);
        (_eventName, _eventParam) = depositRaw(
            token,
            vToken,
            amt,
            getId,
            setId
        );
    }

    /**
     * @dev Withdraw ETH/ERC20_Token.
     * @notice Withdraw deposited token from Venus
     * @param token The address of the token to withdraw. (For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vToken The address of the corresponding vToken.
     * @param amt The amount of the token to withdraw. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens withdrawn.
     */
    function withdrawRaw(
        address token,
        address vToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        require(
            token != address(0) && vToken != address(0),
            "invalid token/vToken address"
        );

        VTokenInterface vTokenContract = VTokenInterface(vToken);
        if (_amt == uint256(-1)) {
            TokenInterface tokenContract = TokenInterface(token);
            uint256 initialBal = token == ethAddr
                ? address(this).balance
                : tokenContract.balanceOf(address(this));
            require(
                vTokenContract.redeem(
                    vTokenContract.balanceOf(address(this))
                ) == 0,
                "full-withdraw-failed"
            );
            uint256 finalBal = token == ethAddr
                ? address(this).balance
                : tokenContract.balanceOf(address(this));
            _amt = finalBal - initialBal;
        } else {
            require(
                vTokenContract.redeemUnderlying(_amt) == 0,
                "withdraw-failed"
            );
        }
        setUint(setId, _amt);

        _eventName = "LogWithdraw(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, vToken, _amt, getId, setId);
    }

    /**
     * @dev Withdraw ETH/ERC20_Token using the Mapping.
     * @notice Withdraw deposited token from Venus
     * @param tokenId The token id of the token to withdraw.(For eg: ETH-A)
     * @param amt The amount of the token to withdraw. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens withdrawn.
     */
    function withdraw(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address token, address vToken) = venusMapping.getMapping(tokenId);
        (_eventName, _eventParam) = withdrawRaw(
            token,
            vToken,
            amt,
            getId,
            setId
        );
    }

    /**
     * @dev Borrow ETH/ERC20_Token.
     * @notice Borrow a token using Venus
     * @param token The address of the token to borrow. (For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vToken The address of the corresponding vToken.
     * @param amt The amount of the token to borrow.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens borrowed.
     */
    function borrowRaw(
        address token,
        address vToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        require(
            token != address(0) && vToken != address(0),
            "invalid token/vToken address"
        );

        enterMarket(vToken);
        require(VTokenInterface(vToken).borrow(_amt) != 0, "borrow-failed");
        setUint(setId, _amt);

        _eventName = "LogBorrow(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, vToken, _amt, getId, setId);
    }

    /**
     * @dev Borrow ETH/ERC20_Token using the Mapping.
     * @notice Borrow a token using Venus
     * @param tokenId The token id of the token to borrow.(For eg: DAI-A)
     * @param amt The amount of the token to borrow.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens borrowed.
     */
    function borrow(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address token, address vToken) = venusMapping.getMapping(tokenId);
        (_eventName, _eventParam) = borrowRaw(token, vToken, amt, getId, setId);
    }

    /**
     * @dev Payback borrowed ETH/ERC20_Token.
     * @notice Payback debt owed.
     * @param token The address of the token to payback. (For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vToken The address of the corresponding vToken.
     * @param amt The amount of the token to payback. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens paid back.
     */
    function paybackRaw(
        address token,
        address vToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        require(
            token != address(0) && vToken != address(0),
            "invalid token/vToken address"
        );

        VTokenInterface vTokenContract = VTokenInterface(vToken);
        _amt = _amt == uint256(-1)
            ? vTokenContract.borrowBalanceCurrent(address(this))
            : _amt;

        if (token == ethAddr) {
            require(address(this).balance >= _amt, "not-enough-eth");
            VETHInterface(vToken).repayBorrow{value: _amt}();
        } else {
            TokenInterface tokenContract = TokenInterface(token);
            require(
                tokenContract.balanceOf(address(this)) >= _amt,
                "not-enough-token"
            );
            tokenContract.approve(vToken, _amt);
            require(vTokenContract.repayBorrow(_amt) == 0, "repay-failed.");
        }
        setUint(setId, _amt);

        _eventName = "LogPayback(address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, vToken, _amt, getId, setId);
    }

    /**
     * @dev Payback borrowed ETH/ERC20_Token using the Mapping.
     * @notice Payback debt owed.
     * @param tokenId The token id of the token to payback.(For eg: Venus-A)
     * @param amt The amount of the token to payback. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of tokens paid back.
     */
    function payback(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address token, address vToken) = venusMapping.getMapping(tokenId);
        (_eventName, _eventParam) = paybackRaw(
            token,
            vToken,
            amt,
            getId,
            setId
        );
    }

    /**
     * @dev Deposit ETH/ERC20_Token.
     * @notice Same as depositRaw. The only difference is this method stores vToken amount in set ID.
     * @param token The address of the token to deposit. (For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vToken The address of the corresponding vToken.
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of cTokens received.
     */
    function depositVTokenRaw(
        address token,
        address vToken,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);

        require(
            token != address(0) && vToken != address(0),
            "invalid token/vToken address"
        );

        enterMarket(vToken);

        VTokenInterface vTokenContract = VTokenInterface(vToken);
        uint256 initialBal = vTokenContract.balanceOf(address(this));

        if (token == ethAddr) {
            _amt = _amt == uint256(-1) ? address(this).balance : _amt;
            VETHInterface(vToken).mint{value: _amt}();
        } else {
            TokenInterface tokenContract = TokenInterface(token);
            _amt = _amt == uint256(-1)
                ? tokenContract.balanceOf(address(this))
                : _amt;
            tokenContract.approve(vToken, _amt);
            require(vTokenContract.mint(_amt) == 0, "deposit-vToken-failed.");
        }

        uint256 _cAmt;

        {
            uint256 finalBal = vTokenContract.balanceOf(address(this));
            _cAmt = sub(finalBal, initialBal);

            setUint(setId, _cAmt);
        }

        _eventName = "LogDepositCToken(address,address,uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(token, vToken, _amt, _cAmt, getId, setId);
    }

    /**
     * @dev Deposit ETH/ERC20_Token using the Mapping.
     * @notice Same as deposit. The only difference is this method stores vToken amount in set ID.
     * @param tokenId The token id of the token to depositCToken.(For eg: DAI-A)
     * @param amt The amount of the token to deposit. (For max: `uint256(-1)`)
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of cTokens received.
     */
    function depositCToken(
        string calldata tokenId,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address token, address vToken) = venusMapping.getMapping(tokenId);
        (_eventName, _eventParam) = depositVTokenRaw(
            token,
            vToken,
            amt,
            getId,
            setId
        );
    }

    /**
     * @dev Withdraw CETH/CERC20_Token using vToken Amt.
     * @notice Same as withdrawRaw. The only difference is this method fetch vToken amount in get ID.
     * @param token The address of the token to withdraw. (For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vToken The address of the corresponding vToken.
     * @param vTokenAmt The amount of cTokens to withdraw
     * @param getId ID to retrieve vTokenAmt
     * @param setId ID stores the amount of tokens withdrawn.
     */
    function withdrawCTokenRaw(
        address token,
        address vToken,
        uint256 vTokenAmt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _cAmt = getUint(getId, vTokenAmt);
        require(
            token != address(0) && vToken != address(0),
            "invalid token/vToken address"
        );

        VTokenInterface vTokenContract = VTokenInterface(vToken);
        TokenInterface tokenContract = TokenInterface(token);
        _cAmt = _cAmt == uint256(-1)
            ? vTokenContract.balanceOf(address(this))
            : _cAmt;

        uint256 withdrawAmt;
        {
            uint256 initialBal = token != ethAddr
                ? tokenContract.balanceOf(address(this))
                : address(this).balance;
            require(vTokenContract.redeem(_cAmt) == 0, "redeem-failed");
            uint256 finalBal = token != ethAddr
                ? tokenContract.balanceOf(address(this))
                : address(this).balance;

            withdrawAmt = sub(finalBal, initialBal);
        }

        setUint(setId, withdrawAmt);

        _eventName = "LogWithdrawCToken(address,address,uint256,uint256,uint256,uint256)";
        _eventParam = abi.encode(
            token,
            vToken,
            withdrawAmt,
            _cAmt,
            getId,
            setId
        );
    }

    /**
     * @dev Withdraw CETH/CERC20_Token using vToken Amt & the Mapping.
     * @notice Same as withdraw. The only difference is this method fetch vToken amount in get ID.
     * @param tokenId The token id of the token to withdraw vToken.(For eg: ETH-A)
     * @param vTokenAmt The amount of cTokens to withdraw
     * @param getId ID to retrieve vTokenAmt
     * @param setId ID stores the amount of tokens withdrawn.
     */
    function withdrawCToken(
        string calldata tokenId,
        uint256 vTokenAmt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address token, address vToken) = venusMapping.getMapping(tokenId);
        (_eventName, _eventParam) = withdrawCTokenRaw(
            token,
            vToken,
            vTokenAmt,
            getId,
            setId
        );
    }

    /**
     * @dev Liquidate a position.
     * @notice Liquidate a position.
     * @param borrower Borrower's Address.
     * @param tokenToPay The address of the token to pay for liquidation.(For ETH: 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE)
     * @param vTokenPay Corresponding vToken address.
     * @param tokenInReturn The address of the token to return for liquidation.
     * @param cTokenColl Corresponding vToken address.
     * @param amt The token amount to pay for liquidation.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of paid for liquidation.
     */
    function liquidateRaw(
        address borrower,
        address tokenToPay,
        address vTokenPay,
        address tokenInReturn,
        address cTokenColl,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        public
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        uint256 _amt = getUint(getId, amt);
        require(
            tokenToPay != address(0) && vTokenPay != address(0),
            "invalid token/vToken address"
        );
        require(
            tokenInReturn != address(0) && cTokenColl != address(0),
            "invalid token/vToken address"
        );

        VTokenInterface vTokenContract = VTokenInterface(vTokenPay);

        {
            (, , uint256 shortfal) = troller.getAccountLiquidity(borrower);
            require(shortfal != 0, "account-cannot-be-liquidated");
            _amt = _amt == uint256(-1)
                ? vTokenContract.borrowBalanceCurrent(borrower)
                : _amt;
        }

        if (tokenToPay == ethAddr) {
            require(address(this).balance >= _amt, "not-enought-eth");
            VETHInterface(vTokenPay).liquidateBorrow{value: _amt}(
                borrower,
                cTokenColl
            );
        } else {
            TokenInterface tokenContract = TokenInterface(tokenToPay);
            require(
                tokenContract.balanceOf(address(this)) >= _amt,
                "not-enough-token"
            );
            tokenContract.approve(vTokenPay, _amt);
            require(
                vTokenContract.liquidateBorrow(
                    borrower,
                    _amt,
                    VTokenInterface(cTokenColl)
                ) == 0,
                "liquidate-failed"
            );
        }

        setUint(setId, _amt);

        _eventName = "LogLiquidate(address,address,address,uint256,uint256,uint256)";
        _eventParam = abi.encode(
            address(this),
            tokenToPay,
            tokenInReturn,
            _amt,
            getId,
            setId
        );
    }

    /**
     * @dev Liquidate a position using the mapping.
     * @notice Liquidate a position using the mapping.
     * @param borrower Borrower's Address.
     * @param tokenIdToPay token id of the token to pay for liquidation.(For eg: ETH-A)
     * @param tokenIdInReturn token id of the token to return for liquidation.(For eg: USDC-A)
     * @param amt token amount to pay for liquidation.
     * @param getId ID to retrieve amt.
     * @param setId ID stores the amount of paid for liquidation.
     */
    function liquidate(
        address borrower,
        string calldata tokenIdToPay,
        string calldata tokenIdInReturn,
        uint256 amt,
        uint256 getId,
        uint256 setId
    )
        external
        payable
        returns (string memory _eventName, bytes memory _eventParam)
    {
        (address tokenToPay, address vTokenToPay) = venusMapping.getMapping(
            tokenIdToPay
        );
        (address tokenInReturn, address cTokenColl) = venusMapping.getMapping(
            tokenIdInReturn
        );

        (_eventName, _eventParam) = liquidateRaw(
            borrower,
            tokenToPay,
            vTokenToPay,
            tokenInReturn,
            cTokenColl,
            amt,
            getId,
            setId
        );
    }
}

contract ConnectorV2Venus is VenusResolver {
    string public name = "Venus-v1";
}
