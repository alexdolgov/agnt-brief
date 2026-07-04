// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "./Withdrawable.sol";
import "./Authorizable.sol";

contract Bridge is Ownable2Step, Withdrawable, Authorizable {
    using MessageHashUtils for bytes;
    using ECDSA for bytes32;

    uint256 public constant FEE_PERCENT_SCALING_FACTOR = 1_000_000;
    uint256 public constant MAX_SCALED_FEE_PERCENT = 100 * FEE_PERCENT_SCALING_FACTOR;

    // solhint-disable-next-line gas-small-strings
    bytes32 private constant _MESSAGE_TYPE_HASH = keccak256(
        // solhint-disable-next-line max-line-length
        "Message(address sourceAccountAddress,address destinationAccountAddress,uint256 sourceChainId,uint256 destinationChainId,uint256 amountIn,uint256 amountOut,uint256 fee,uint256 expiration,uint256 nonce)"
    );

    bytes32 private immutable _DOMAIN_SEPARATOR;

    uint256 public minAmountIn;
    uint256 public maxAmountIn;
    uint256 public minFee;
    uint256 public scaledFeePercent;
    uint256 public initialsCounter = 0;
    uint256 public releasesCounter = 0;
    bool public isEnabled = true;

    mapping(uint256 => bool) private _usedNonces;

    event MinAmountInChanged(uint256 newMinAmountIn, uint256 occuredAt);
    event MaxAmountInChanged(uint256 newMaxAmountIn, uint256 occuredAt);
    event MinFeeChanged(uint256 fee, uint256 occuredAt);
    event ScaledFeePercentChanged(uint256 scaledPercent, uint256 occuredAt);
    event EnabledChanged(bool isEnabled, uint256 occuredAt);
    event Initiated(
        address indexed sourceAddress,
        address indexed destinationAddress,
        uint256 sourceChainId,
        uint256 destinationChainId,
        uint256 amountIn,
        uint256 amountOut,
        uint256 fee,
        uint256 occuredAt
    );
    event Released(
        address indexed sourceAddress,
        address indexed destinationAddress,
        uint256 sourceChainId,
        uint256 destinationChainId,
        bytes32 sourceTx,
        uint256 amount,
        uint256 occuredAt
    );

    constructor(
        address ownerAddress,
        address authorizedAddress_,
        uint256 minAmountIn_,
        uint256 maxAmountIn_,
        uint256 minFee_,
        uint256 scaledFeePercent_
    ) Ownable(ownerAddress) Authorizable(authorizedAddress_) {
        require(maxAmountIn_ > minAmountIn_, "maxAmountIn <= minAmountIn");
        require(scaledFeePercent_ <= MAX_SCALED_FEE_PERCENT, "Fee percent > 100%");

        minAmountIn = minAmountIn_;
        maxAmountIn = maxAmountIn_;
        minFee = minFee_;
        scaledFeePercent = scaledFeePercent_;
        _DOMAIN_SEPARATOR = keccak256(abi.encode(
            // solhint-disable-next-line gas-small-strings
            keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
            keccak256(bytes("Cobridge")),
            keccak256(bytes("1")),
            block.chainid,
            address(this)
        ));
    }

    receive() external payable {}

    function setMinAmountIn(uint256 amount) external onlyOwner {
        require(amount < maxAmountIn, "Amount is more that maxAmountIn");

        emit MinAmountInChanged(amount, block.timestamp);
        minAmountIn = amount;
    }

    function setMaxAmountIn(uint256 amount) external onlyOwner {
        require(amount > minAmountIn, "Amount is less that minAmountIn");

        emit MaxAmountInChanged(amount, block.timestamp);
        maxAmountIn = amount;
    }

    function setMinFee(uint256 fee) external onlyOwner {
        emit MinFeeChanged(fee, block.timestamp);
        minFee = fee;
    }

    function setScaledFeePercent(uint256 newScaledFeePercent) external onlyOwner {
        require(newScaledFeePercent <= MAX_SCALED_FEE_PERCENT, "Fee percent > 100%");

        emit ScaledFeePercentChanged(newScaledFeePercent, block.timestamp);
        scaledFeePercent = newScaledFeePercent;
    }

    function setEnabled(bool isEnabled_) external onlyOwner {
        emit EnabledChanged(isEnabled_, block.timestamp);
        isEnabled = isEnabled_;
    }

    function initiate(
        uint256 destinationChainId,
        address destinationAddress,
        uint256 amountIn,
        uint256 amountOut,
        uint256 expiration,
        uint256 nonce,
        bytes calldata signature
    ) external payable {
        require(isEnabled, "The bridge is disabled");
        require(!_usedNonces[nonce], "Used nonce");
        require(block.chainid != destinationChainId, "Invalid destination chain");
        require(amountIn >= minAmountIn, "Value is less that minAmountIn");
        require(amountIn <= maxAmountIn, "Value is more that maxAmountIn");
        require(expiration >= block.timestamp, "Signature is expired");

        uint256 calculatedFee = calculateFee(amountIn);
        require(msg.value == amountIn + calculatedFee, "Incorrent value");
        require(
            checkSignature(
                msg.sender,
                destinationAddress,
                block.chainid,
                destinationChainId,
                amountIn,
                amountOut,
                calculatedFee,
                expiration,
                nonce,
                signature
            ),
            "Invalid signature"
        );

        emit Initiated(
            msg.sender,
            destinationAddress,
            block.chainid,
            destinationChainId,
            amountIn,
            amountOut,
            calculatedFee,
            block.timestamp
        );
        _usedNonces[nonce] = true;
        initialsCounter++;
    }

    function release(
        address sourceAddress,
        address destinationAddress,
        uint256 sourceChainId,
        bytes32 sourceTx,
        uint256 amount
    ) external onlyAuthorized {
        require(destinationAddress != address(0), "Account address can't be zero");
        require(address(this).balance >= amount, "Not enough balance");

        emit Released(
            sourceAddress,
            destinationAddress,
            sourceChainId,
            block.chainid,
            sourceTx,
            amount,
            block.timestamp
        );
        releasesCounter++;
        (bool success, ) = payable(destinationAddress).call{value: amount}("");
        require(success, "Transfer failed");
    }

    function calculateFee(uint256 value) public view returns (uint256) {
        uint256 fee = value * scaledFeePercent / 100 / FEE_PERCENT_SCALING_FACTOR;
        return fee > minFee ? fee : minFee;
    }

    function checkSignature(
        address sourceAddress,
        address destinationAddress,
        uint256 sourceChainId,
        uint256 destinationChainId,
        uint256 amountIn,
        uint256 amountOut,
        uint256 fee,
        uint256 expiration,
        uint256 nonce,
        bytes calldata signature
    ) public view returns (bool) {
        bytes32 structHash = keccak256(abi.encode(
            _MESSAGE_TYPE_HASH,
            sourceAddress,
            destinationAddress,
            sourceChainId,
            destinationChainId,
            amountIn,
            amountOut,
            fee,
            expiration,
            nonce
        ));

        bytes32 digest = MessageHashUtils.toTypedDataHash(_DOMAIN_SEPARATOR, structHash);
        return digest.recover(signature) == authorizedAddress;
    }
}
