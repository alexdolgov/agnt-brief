// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import "./interfaces/IModuleCalls.sol";

import {console} from "forge-std/console.sol";

contract MultiCallUtils {
    // Errors
    error DelegateCallNotAllowed(uint256 _index);
    error CallReverted(uint256 _index, bytes _result);

    function multiCall(
        IModuleCalls.Transaction[] memory _txs
    )
        public
        payable
        returns (bool[] memory _successes, bytes[] memory _results)
    {
        _successes = new bool[](_txs.length);
        _results = new bytes[](_txs.length);

        for (uint256 i = 0; i < _txs.length; i++) {
            IModuleCalls.Transaction memory transaction = _txs[i];

            console.log("transaction.delegateCall", transaction.delegateCall);
            if (transaction.delegateCall) revert DelegateCallNotAllowed(i);
            if (gasleft() < transaction.gasLimit)
                revert IModuleCalls.NotEnoughGas(
                    i,
                    transaction.gasLimit,
                    gasleft()
                );

            // solhint-disable
            (_successes[i], _results[i]) = transaction.target.call{
                value: transaction.value,
                gas: transaction.gasLimit == 0
                    ? gasleft()
                    : transaction.gasLimit
            }(transaction.data);
            // solhint-enable

            if (!_successes[i] && _txs[i].revertOnError)
                revert CallReverted(i, _results[i]);
        }
    }

    function getBalances(
        address user,
        address[] calldata tokens
    )
        external
        view
        returns (bool[] memory _successes, uint256[] memory _balances)
    {
        _successes = new bool[](tokens.length + 1);
        _balances = new uint256[](tokens.length + 1);

        for (uint i = 0; i < tokens.length; i++) {
            (_successes[i], _balances[i]) = _getBalance(user, tokens[i]);
        }

        // last element is the native balance
        (_successes[tokens.length], _balances[tokens.length]) = (
            true,
            address(user).balance
        );
    }

    // ///
    // Globals
    // ///

    function callBlockhash(uint256 _i) external view returns (bytes32) {
        return blockhash(_i);
    }

    function callCoinbase() external view returns (address) {
        return block.coinbase;
    }

    function callDifficulty() external view returns (uint256) {
        return block.prevrandao; // old block.difficulty
    }

    function callPrevrandao() external view returns (uint256) {
        return block.prevrandao;
    }

    function callGasLimit() external view returns (uint256) {
        return block.gaslimit;
    }

    function callBlockNumber() external view returns (uint256) {
        return block.number;
    }

    function callTimestamp() external view returns (uint256) {
        return block.timestamp;
    }

    function callGasLeft() external view returns (uint256) {
        return gasleft();
    }

    function callGasPrice() external view returns (uint256) {
        return tx.gasprice;
    }

    function callOrigin() external view returns (address) {
        return tx.origin;
    }

    function callBalanceOf(address _addr) external view returns (uint256) {
        return _addr.balance;
    }

    function callCodeSize(address _addr) external view returns (uint256 size) {
        assembly {
            size := extcodesize(_addr)
        }
    }

    function callCode(address _addr) external view returns (bytes memory code) {
        assembly {
            let size := extcodesize(_addr)
            code := mload(0x40)
            mstore(0x40, add(code, and(add(add(size, 0x20), 0x1f), not(0x1f))))
            mstore(code, size)
            extcodecopy(_addr, add(code, 0x20), 0, size)
        }
    }

    function callCodeHash(
        address _addr
    ) external view returns (bytes32 codeHash) {
        assembly {
            codeHash := extcodehash(_addr)
        }
    }

    function callChainId() external view returns (uint256 id) {
        assembly {
            id := chainid()
        }
    }

    // internal

    function _getBalance(
        address user,
        address token
    ) internal view returns (bool txSuccess, uint256 balance) {
        uint256 size;
        assembly {
            size := extcodesize(token)
        }
        if (size == 0) {
            return (txSuccess, balance);
        }

        (bool success, bytes memory data) = token.staticcall(
            abi.encodeWithSelector(0x70a08231, user)
        );

        if (success) {
            balance = abi.decode(data, (uint256));
            txSuccess = true;
        }
    }
}
