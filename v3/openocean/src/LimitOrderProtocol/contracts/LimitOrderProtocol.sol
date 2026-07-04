// SPDX-License-Identifier: MIT

pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/SignatureCheckerUpgradeable.sol";
import "./libraries/UniversalERC20.sol";

/// @title openocean Limit Order Protocol v2
contract LimitOrderProtocol is EIP712Upgradeable, OwnableUpgradeable {
    using UniversalERC20 for IERC20Upgradeable;
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using AddressUpgradeable for address;

    mapping(address => bool) public operators;
    address private _ooSwap;

    event Swap(
        bytes32 indexed orderHash,
        address indexed from,
        address[] path,
        uint256[] amounts,
        address fee,
        bytes swapExtraData
    );

    function initialize(address __ooswap) public initializer {
        __EIP712_init("openocean Limit Order Protocol", "2");
        __Ownable_init();
        _ooSwap = __ooswap;
    }
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    struct Param {
        bool isETH;
        bool success;
        uint256 returnAmount;
        uint256 delta;
        address to;
    }

    struct SwapData {
        address from;
        address[] path;
        uint256[] amounts;
        address fee;
        bytes swapExtraData;
        bytes32 orderHash;
    }
    error SwapFailed(bytes32 orderHash);

    event UpdateOperator(address oldOperator, address newOperator);

    modifier onlyOperator() {
        require(operators[_msgSender()], "caller is not the operator");
        _;
    }

    function updateOperator(address _operator, bool on) public onlyOwner {
        operators[_operator] = on;
    }

    function batchSwap(SwapData[] calldata swaps) public payable onlyOperator {
        for (uint256 i = 0; i < swaps.length; i++) {
            try
                this.swap(
                    swaps[i].from,
                    swaps[i].path,
                    swaps[i].amounts,
                    swaps[i].fee,
                    swaps[i].swapExtraData,
                    swaps[i].orderHash
                )
            {} catch {
                revert SwapFailed(swaps[i].orderHash);
            }
        }
    }

    function swap(
        address from,
        address[] calldata path,
        uint256[] calldata amounts,
        address fee,
        bytes calldata swapExtraData,
        bytes32 orderHash
    ) public payable onlyOperator {
        require(path.length == 2 && amounts.length == 2, "invalid args");
        address ooSwap = _ooSwap;
        require(ooSwap != address(0), "ooswap is zero");
        Param memory vars;
        vars.isETH = IERC20Upgradeable(path[0]).isETH();
        if (!vars.isETH) {
            IERC20Upgradeable(path[0]).safeTransferFrom(
                from,
                address(this),
                amounts[0]
            );
            IERC20Upgradeable(path[0]).safeIncreaseAllowance(
                ooSwap,
                amounts[0]
            );
        }
        uint256 balBefore = IERC20Upgradeable(path[1]).balanceOf(address(this));
        (vars.success, ) = ooSwap.call{value: msg.value}(swapExtraData);

        require(vars.success, "swap failed");
        uint256 balAfter = IERC20Upgradeable(path[1]).balanceOf(address(this));
        if (!vars.isETH) {
            IERC20Upgradeable(path[0]).safeApprove(ooSwap, 0);
        }
        vars.returnAmount = balAfter - balBefore;

        require(vars.returnAmount >= amounts[1], "returnAmount is too low");
        IERC20Upgradeable(path[1]).universalTransfer(from, amounts[1]);
        vars.delta = vars.returnAmount - amounts[1];
        vars.to = fee == address(0) ? owner() : fee;
        if (vars.delta > 0) {
            IERC20Upgradeable(path[1]).universalTransfer(vars.to, vars.delta);
        }
        emit Swap(orderHash, from, path, amounts, vars.to, swapExtraData);
    }

    function validSignature(
        address from,
        bytes32 orderHash,
        bytes calldata signature
    ) public view returns (bool) {
        return
            SignatureCheckerUpgradeable.isValidSignatureNow(
                from,
                orderHash,
                signature
            );
    }

    function setOOswap(address ooswap) public onlyOwner {
        _ooSwap = ooswap;
    }
}
