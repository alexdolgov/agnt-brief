pragma solidity >=0.8.18;

import "./library/MuonStorage.sol";

interface ISymmioDiamond {
	function getNextQuoteId() external view returns (uint256);

	// Lock quote
	function lockQuote(uint256 quoteId, SingleUpnlSig memory upnlSig) external;

    // Allocations
    function allocateForPartyB(uint256 amount, address partyA) external;

	function deallocateForPartyB(uint256 amount, address partyA, SingleUpnlSig memory upnlSig) external;

	function transferAllocation(uint256 amount, address origin, address recipient, SingleUpnlSig memory upnlSig) external;

	function depositToReserveVault(uint256 amount, address partyB) external;

	function withdrawFromReserveVault(uint256 amount) external;
}