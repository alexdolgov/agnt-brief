// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {ICTFExchange} from "./NegRisk/interfaces/ICTFExchange.sol";

/**
 * @title RegisterTokenHelper
 * @notice This contract is controlled by the market operator and is used to register tokens on CTF exchange
 * @author predict.fun protocol team
 */
contract RegisterTokenHelper is AccessControl {
    ICTFExchange public immutable CTF_EXCHANGE;
    ICTFExchange public immutable NEG_RISK_CTF_EXCHANGE;

    enum ConditionalTokenType {
        Binary,
        NegRisk
    }

    /**
     * @param _ctfExchange Binary outcome CTF exchange
     * @param _negRiskCtfExchange Neg risk CTF exchange
     * @param _owner The owner of the contract, which should be the market operator
     */
    constructor(address _ctfExchange, address _negRiskCtfExchange, address _owner) {
        CTF_EXCHANGE = ICTFExchange(_ctfExchange);
        NEG_RISK_CTF_EXCHANGE = ICTFExchange(_negRiskCtfExchange);

        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
    }

    /**
     * @notice Register a token on the CTF exchange. Only callable by the owner.
     *
     * @param tokenType The conditional token type
     * @param token The tokenId being registered
     * @param complement The complement of the tokenId
     * @param conditionId The CTF conditionId
     */
    function registerToken(
        ConditionalTokenType tokenType,
        uint256 token,
        uint256 complement,
        bytes32 conditionId
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (tokenType == ConditionalTokenType.Binary) {
            CTF_EXCHANGE.registerToken(token, complement, conditionId);
        } else if (tokenType == ConditionalTokenType.NegRisk) {
            NEG_RISK_CTF_EXCHANGE.registerToken(token, complement, conditionId);
        }
    }
}
