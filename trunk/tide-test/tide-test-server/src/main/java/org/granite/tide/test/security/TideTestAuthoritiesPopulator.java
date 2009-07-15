package org.granite.tide.test.security;

import java.util.HashSet;
import java.util.Set;

import org.springframework.ldap.core.DirContextOperations;
import org.springframework.security.GrantedAuthority;
import org.springframework.security.GrantedAuthorityImpl;
import org.springframework.security.ldap.LdapAuthoritiesPopulator;

public class TideTestAuthoritiesPopulator implements LdapAuthoritiesPopulator  {

	public GrantedAuthority[] getGrantedAuthorities(DirContextOperations userData, String username) {
		Set<GrantedAuthority> userPerms = new HashSet<GrantedAuthority>();

		userPerms.add(new GrantedAuthorityImpl("ROLE_USER"));

		return userPerms.toArray(new GrantedAuthority[userPerms.size()] );
	}
	

}
