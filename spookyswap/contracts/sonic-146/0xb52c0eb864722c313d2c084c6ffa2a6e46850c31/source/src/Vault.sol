// SPDX-License-Identifier: UNKNOWN
pragma solidity ^0.8.18;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
	function transfer(address to, uint256 value) external returns (bool);
}

interface IERC721Receiver {
	function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data) external returns (bytes4);
}

interface Manager {
	function WETH9() external view returns (address);

	struct MintParams {
		address token0;
		address token1;
		uint24 fee;
		int24 tickLower;
		int24 tickUpper;
		uint256 amount0Desired;
		uint256 amount1Desired;
		uint256 amount0Min;
		uint256 amount1Min;
		address recipient;
		uint256 deadline;
	}

	struct CollectParams {
		uint256 tokenId;
		address recipient;
		uint128 amount0Max;
		uint128 amount1Max;
	}

	function mint(MintParams memory params) external returns (uint256 tokenId, uint128 liquidity, uint256 amount0, uint256 amount1);
	function collect(CollectParams calldata params) external returns (uint256 amount0, uint256 amount1);
	function safeTransferFrom(address from, address to, uint256 tokenId) external;
}

contract Vault is IERC721Receiver {

	address public owner;
	address public owner2;
	uint256 public tokenId;
	Manager public nfpm = Manager(0xf807Aca27B1550Fe778fD4E7013BB57480b17fAc);
	uint public withdrawTime;

	constructor() {
	}

    function setup(address _owner, address _owner2, uint _tokenId) external {
        require(owner == address(0));
        owner = _owner;
		owner2 = _owner2;
		tokenId = _tokenId;
		withdrawTime = block.timestamp + 365 days;
    }

	function setNewOwner2(address newOwner) external {
		require(msg.sender == owner2 || msg.sender == owner);
		owner2 = newOwner;
	}

	function collectAndWithdraw(address token0, address token1) external {
		collectFees();
		withdraw(token0, token1);
	}

	function collectFees() public {
		nfpm.collect(
			Manager.CollectParams({
				tokenId: tokenId,
				recipient: address(this),
				amount0Max: type(uint128).max,
				amount1Max: type(uint128).max
			})
		);
	}

	function withdraw(address token0, address token1) public {
		uint amount0 = IERC20(token0).balanceOf(address(this)) / 2;
		uint amount1 = IERC20(token1).balanceOf(address(this)) / 2;

		IERC20(token0).transfer(owner, amount0);
		IERC20(token1).transfer(owner, amount1);

		IERC20(token0).transfer(owner2, IERC20(token0).balanceOf(address(this)));
		IERC20(token1).transfer(owner2, IERC20(token1).balanceOf(address(this)));
	}

	function withdraw2() external {
		require(msg.sender == owner);
		require(block.timestamp >= withdrawTime);
		nfpm.safeTransferFrom(address(this), owner, tokenId);
	}

	function onERC721Received(
		address operator,
		address from,
		uint256 id,
		bytes calldata data
	) external override returns (bytes4) {
		require(tokenId == 0, "Vault: LOCKED");

		tokenId = id;

		return IERC721Receiver.onERC721Received.selector;
	}
	
}