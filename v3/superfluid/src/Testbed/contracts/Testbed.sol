import { IConstantFlowAgreementV1 } from "@superfluid-finance/ethereum-contracts/contracts/interfaces/agreements/IConstantFlowAgreementV1.sol";

contract Testbed {
    uint256 constant A = 2;
    
    function getA() public view returns (uint256) {
        return A;
    }
}