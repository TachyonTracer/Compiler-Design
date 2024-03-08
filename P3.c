
#include <stdio.h> 
#include <string.h> 
int main(){ 
 
    char user_name[20]; 
    char user_password[20]; 
    char file_user_name[20]; 
    char file_user_password[20]; 
 
    FILE *fp = fopen("MyDetails.csv", "r"); 
    if (fp == NULL) { 
        printf("File not found\n"); 
        return 1; 
    } 
    fscanf(fp, "%s %s", file_user_name, file_user_password); 
    fclose(fp); 
    printf("Enter UserName: "); 
    scanf("%s", user_name); 
    printf("Enter Password: "); 
    scanf("%s", user_password); 

    if (strcmp(user_name, file_user_name) == 1 && strcmp(user_password, file_user_password) == 1) { 
    
        printf("Login successful\n"); 
    } 
 
    else { 
        printf("Invalid user name or password\n"); 
    } 

    return 0; 
}