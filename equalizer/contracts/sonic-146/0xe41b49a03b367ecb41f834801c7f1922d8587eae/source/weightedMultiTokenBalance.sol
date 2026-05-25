/**
 *Submitted for verification at basescan.org on 2024-11-19
*/

/*


//SPDX-License-Identifier: BUSL-1.1
Copyright 2024 Guru Network ftm1337@protonmail.com
Copyright 2024 Equalizer Exchange

Business Source License 1.1

License text copyright (c) 2017 MariaDB Corporation Ab, All Rights Reserved.
"Business Source License" is a trademark of MariaDB Corporation Ab.

-----------------------------------------------------------------------------

Parameters

Licensor:             Guru Network & Equalizer Exchange

Licensed Work:        eLOCKS, eLOCKS_fNFT, eLOCK, Art & Solidity Smart Contracts,
                      eLOCKS NFT, Artwork, Metadata, tangible or intangible parts,
                      or parts of, or any software or property derived therefrom.
                      The Licensed Work is (c) 2024 Guru Network and
                      the Licensed Work is (c) 2024 Equalizer Exchange

Additional Use Grant: Any uses listed and defined at
                      any Self-addressed transactions on Ethereum Mainnet from
                      0x167d87a906da361a10061fe42bbe89451c2ee584 with
                      explicit expression of Additional Use Grant

Change Date:          The earlier of 2028-12-31 or a date specified at
                      any Self-addressed transactions on Ethereum Mainnet from
                      0x167d87a906da361a10061fe42bbe89451c2ee584 with
                      explicit expression of Change Date

Change License:       GNU General Public License v2.0 or later

-----------------------------------------------------------------------------

Terms

The Licensor hereby grants you the right to copy, modify, create derivative
works, redistribute, and make non-production use of the Licensed Work. The
Licensor may make an Additional Use Grant, above, permitting limited
production use.

Effective on the Change Date, or the seventh anniversary of the first publicly
available distribution of a specific version of the Licensed Work under this
License, whichever comes first, the Licensor hereby grants you rights under
the terms of the Change License, and the rights granted in the paragraph
above terminate.

If your use of the Licensed Work does not comply with the requirements
currently in effect as described in this License, you must purchase a
commercial license from the Licensor, its affiliated entities, or authorized
resellers, or you must refrain from using the Licensed Work.

All copies of the original and modified Licensed Work, and derivative works
of the Licensed Work, are subject to this License. This License applies
separately for each version of the Licensed Work and the Change Date may vary
for each version of the Licensed Work released by Licensor.

You must conspicuously display this License on each original or modified copy
of the Licensed Work. If you receive the Licensed Work in original or
modified form from a third party, the terms and conditions set forth in this
License apply to your use of that work.

Any use of the Licensed Work in violation of this License will automatically
terminate your rights under this License for the current and all other
versions of the Licensed Work.

This License does not grant you any right in any trademark or logo of
Licensor or its affiliates (provided that you may use a trademark or logo of
Licensor as expressly required by this License).

TO THE EXTENT PERMITTED BY APPLICABLE LAW, THE LICENSED WORK IS PROVIDED ON
AN "AS IS" BASIS. LICENSOR HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS,
EXPRESS OR IMPLIED, INCLUDING (WITHOUT LIMITATION) WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, AND
TITLE.

MariaDB hereby grants you permission to use this License’s text to license
your works, and to refer to it using the trademark "Business Source License",
as long as you comply with the Covenants of Licensor below.

-----------------------------------------------------------------------------

Covenants of Licensor

In consideration of the right to use this License’s text and the "Business
Source License" name and trademark, Licensor covenants to MariaDB, and to all
other recipients of the licensed work to be provided by Licensor:

1. To specify as the Change License the GPL Version 2.0 or any later version,
   or a license that is compatible with GPL Version 2.0 or a later version,
   where "compatible" means that software provided under the Change License can
   be included in a program with software provided under GPL Version 2.0 or a
   later version. Licensor may specify additional Change Licenses without
   limitation.

2. To either: (a) specify an additional grant of rights to use that does not
   impose any additional restriction on the right granted in this License, as
   the Additional Use Grant; or (b) insert the text "None".

3. To specify a Change Date.

4. Not to modify this License in any other way.

-----------------------------------------------------------------------------

Notice

The Business Source License (this document, or the "License") is not an Open
Source license. However, the Licensed Work will eventually be made available
under an Open Source License, as stated in this License.



-----------------------------------------------------------------------------
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-----------------------------------------------------------------------------







FFFFF  TTTTTTT  M   M         GGGGG  U    U  RRRRR     U    U
FF       TTT   M M M M       G       U    U  RR   R    U    U
FFFFF    TTT   M  M  M      G  GGG   U    U  RRRRR     U    U
FF       TTT   M  M  M   O  G    G   U    U  RR R      U    U
FF       TTT   M     M       GGGGG    UUUU   RR  RRR    UUUU

					https://eliteness.network


						Contact us at:
			https://discord.com/invite/QpyfMarNrV
					https://t.me/FTM1337

	Community Mediums:
		https://medium.com/@ftm1337
		https://twitter.com/ftm1337
*/





pragma solidity 0.8.9;

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address) external view returns (uint);
}

interface IVE {
	function getVotes(address) external view returns (uint256);
	function totalSupply() external view returns (uint256);
}

contract weightedMultiTokenBalance {

	/** @dev kinds:
	 *    0: erc20
	 *    1: venft
	 *  @dev coef = 18 decimals x weight.
	 *    should be 1e18 for 1x weight of 18-decimal asset.
	 *    should be 2.5e30 for 2.5x weight 6-decimal asset.
	 */

	struct Asset {
		address addr;
		uint	kind;
		uint	coef;
	}


	address public immutable admin;

	Asset[] public ASSETS;

	constructor() {
		admin = msg.sender;
	}

	function set(Asset[] memory _a) external {
		require(msg.sender==admin);
		delete ASSETS;
		uint l=_a.length;
		for(uint i;i<l;i++) {
			ASSETS.push(_a[i]);
		}
	}

	function get() external view returns(Asset[] memory) {
		uint l=ASSETS.length;
		Asset[] memory rd = new Asset[](l);
		for(uint i;i<l;i++) {
			rd[i] = ASSETS[i];
		}
		return rd;
	}

	function balanceOf(address u) public view returns(uint) {
		uint l=ASSETS.length;
		uint bal;
		for(uint i;i<l;i++) {
			Asset memory a = ASSETS[i];
			if(a.kind==0) {
				uint b = IERC20(a.addr).balanceOf(u);
				b = b * a.coef / 1e18;
				bal += b;
			}
			else if(ASSETS[i].kind==1) {
				uint b = IVE(a.addr).getVotes(u);
				b = b * a.coef / 1e18;
				bal += b;
			}
		}
		return bal;
	}

	function totalSupply() public view returns(uint) {
		uint l=ASSETS.length;
		uint bal;
		for(uint i;i<l;i++) {
			Asset memory a = ASSETS[i];
			if(a.kind==0) {
				uint b = IERC20(a.addr).totalSupply();
				b = b * a.coef / 1e18;
				bal += b;
			}
			else if(ASSETS[i].kind==1) {
				uint b = IVE(a.addr).totalSupply();
				b = b * a.coef / 1e18;
				bal += b;
			}
		}
		return bal;
	}

	function decimals() public pure returns (uint) {
		return 18;
	}

	function name() public pure returns (string memory) {
		return "wmtBalance";
	}

	function symbol() public pure returns (string memory) {
		return "Weighted Multi-Token Balance";
	}
}