// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IDiamondCut} from "./IDiamondCut.sol";
import {IDiamondLoupe} from "./IDiamondLoupe.sol";

interface ISafe {
    function execTransactionFromModule(address to, uint256 value, bytes memory data, uint8 operation) external returns (bool success);
}

contract HypernativeModule is Ownable {
    address public updater;
    address public protectedContractAddress;
    ISafe internal safe;

    constructor(address multisig, address _protectedContractsAddress, address _updater) Ownable(msg.sender) {
        safe = ISafe(multisig);
        updater = _updater;
        protectedContractAddress = _protectedContractsAddress;
    }

    modifier onlyUpdater() {
        require(msg.sender == updater, "HypernativeModule: Only Updater");
        _;
    }

    modifier onlyOwnerOrUpdater() {
        require(msg.sender == updater || msg.sender == owner(), "HypernativeModule: Only Updater or Owner");
        _;
    }

    function removeAllBeanstalkFunctions() public onlyOwner {
        IDiamondLoupe.Facet[] memory facets = IDiamondLoupe(protectedContractAddress).facets();
        uint256 counter;
        uint256 facetsLength = facets.length;
        bytes4[] memory _functionSelectors;
        bytes4[] memory generatedFunctionSelectors;
        for (uint256 i; i < facetsLength; ++i) {
            _functionSelectors = facets[i].functionSelectors;
            assembly {
                mstore(generatedFunctionSelectors, add(mload(generatedFunctionSelectors), mload(_functionSelectors)))
            }

            for (uint256 j; j < _functionSelectors.length; ++j) {
                if (_functionSelectors[j] == IDiamondCut.diamondCut.selector || 
                    _functionSelectors[j] == IDiamondLoupe.facetFunctionSelectors.selector || 
                    _functionSelectors[j] == IDiamondLoupe.facetAddresses.selector ||
                    _functionSelectors[j] == IDiamondLoupe.facetAddress.selector ||
                    _functionSelectors[j] == IDiamondLoupe.facets.selector
                 ) {
                    assembly {
                        mstore(generatedFunctionSelectors, sub(mload(generatedFunctionSelectors), 1))
                    }
                    continue;
                }
                generatedFunctionSelectors[counter++] = _functionSelectors[j];
            }
        }

        IDiamondCut.FacetCut[] memory diamondCutPayload = new IDiamondCut.FacetCut[](1);
        diamondCutPayload[0] = IDiamondCut.FacetCut({
            facetAddress: address(0),
            action: IDiamondCut.FacetCutAction.Remove,
            functionSelectors: generatedFunctionSelectors
        });
        bytes memory encodedDiamondCutPayload = abi.encodeCall(IDiamondCut.diamondCut, (diamondCutPayload, address(0), bytes("")));
        safe.execTransactionFromModule(protectedContractAddress, 0, encodedDiamondCutPayload, 0);
    }

    function updateMultisigAddress(address newMultisig) public onlyOwner {
        safe = ISafe(newMultisig);
    }

    function replaceProtectedContract(address _protectedContractAddress) public onlyUpdater {
        protectedContractAddress = _protectedContractAddress;
    }

    function changeUpdater(address _updater) public onlyOwnerOrUpdater {
        updater = _updater;
    }

    function getMultisigAddress() public view returns (address) {
        return address(safe);
    }   
}
