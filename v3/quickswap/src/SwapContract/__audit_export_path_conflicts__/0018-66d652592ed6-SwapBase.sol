pragma solidity =0.8.4;

import "./Storage.sol";

abstract contract SwapBase is Storage {
    mapping(address => uint256) internal providerFee;
    mapping(address => uint256) internal amountOfProvider;
    mapping(address => uint256) internal platformShare;

    // emitted every time when user gets crypto or tokens after success crossChainSwap
    event TransferFromOtherBlockchain(
        address user,
        uint256 amount,
        uint256 amountWithoutFee,
        bytes32 originalTxHash
    );
    // emitted if the recipient should receive crypto in the target blockchain
    event TransferCryptoToOtherBlockchainUser(
        uint256 RBCAmountIn,
        uint256 amountSpent,
        address provider
    );
    // emitted if the recipient should receive tokens in the target blockchain
    event TransferTokensToOtherBlockchainUser(
        uint256 RBCAmountIn,
        uint256 amountSpent,
        address provider
    );

    /**
     * @dev throws if transaction sender is not in relayer role
     */
    modifier onlyRelayer() {
        require(
            hasRole(RELAYER_ROLE, _msgSender()),
            "swapContract: Caller is not in relayer role"
        );
        _;
    }

    /**
     * @dev Constructor of contract
     */
    constructor() {}

    function _processTransaction(
        address user,
        uint256 amountWithFee,
        bytes32 originalTxHash,
        uint256 blockchainNum,
        bytes memory concatSignatures
    ) internal {
        bytes32 hashedParams = getHashPacked(
            user,
            amountWithFee,
            originalTxHash,
            blockchainNum
        );
        uint256 statusCode = processedTransactions[originalTxHash];
        require(statusCode == 0, "swapContract: Transaction already processed");

        uint256 signaturesCount = concatSignatures.length /
            uint256(SIGNATURE_LENGTH);
        address[] memory validatorAddresses = new address[](signaturesCount);
        for (uint256 i = 0; i < signaturesCount; i++) {
            address validatorAddress = ecOffsetRecover(
                hashedParams,
                concatSignatures,
                i * SIGNATURE_LENGTH
            );
            require(
                isValidator(validatorAddress),
                "swapContract: Validator address not in whitelist"
            );
            for (uint256 j = 0; j < i; j++) {
                require(
                    validatorAddress != validatorAddresses[j],
                    "swapContract: Validator address is duplicated"
                );
            }
            validatorAddresses[i] = validatorAddress;
        }
        processedTransactions[originalTxHash] = 1;
    }
    
    function _calculateFee(address provider, uint256 amountWithFee, uint256 initBlockchainNum) internal returns(uint256 amountWithoutFee) {
        if (provider != address(0)){
            uint256 providerPercent = providerFee[provider];

            if (providerPercent > 0){
                uint256 platformPercent = platformShare[provider];

                uint256 _providerAndProtocolFee = FullMath.mulDiv(
                    amountWithFee,
                    providerPercent,
                    1e6
                );

                uint256 _platformFee = FullMath.mulDiv(
                    _providerAndProtocolFee,
                    platformPercent,
                    1e6
                );

                amountOfProvider[provider] += _providerAndProtocolFee - _platformFee;
                accTokenFee += _platformFee;

                amountWithoutFee = amountWithFee - _providerAndProtocolFee;
            } else {
                amountWithoutFee = amountWithFee;
            }
        } else {
            amountWithoutFee = FullMath.mulDiv(
                amountWithFee,
                1e6 - feeAmountOfBlockchain[initBlockchainNum],
                1e6
            );

            accTokenFee += amountWithFee - amountWithoutFee;
        }
    }

    /**
     * @dev Function to check if address is belongs to relayer role
     * @param account Address to check
     */
    function isRelayer(address account) public view returns (bool) {
        return hasRole(RELAYER_ROLE, account);
    }

    /**
     * @dev Function to check if address is belongs to validator role
     * @param account Address to check
     *
     */
    function isValidator(address account) public view returns (bool) {
        return hasRole(VALIDATOR_ROLE, account);
    }
}
